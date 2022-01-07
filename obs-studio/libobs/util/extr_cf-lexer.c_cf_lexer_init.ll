; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { i32, i32*, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_lexer_init(%struct.cf_lexer* %0) #0 {
  %2 = alloca %struct.cf_lexer*, align 8
  store %struct.cf_lexer* %0, %struct.cf_lexer** %2, align 8
  %3 = load %struct.cf_lexer*, %struct.cf_lexer** %2, align 8
  %4 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %3, i32 0, i32 5
  %5 = call i32 @lexer_init(i32* %4)
  %6 = load %struct.cf_lexer*, %struct.cf_lexer** %2, align 8
  %7 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @da_init(i32 %8)
  %10 = load %struct.cf_lexer*, %struct.cf_lexer** %2, align 8
  %11 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.cf_lexer*, %struct.cf_lexer** %2, align 8
  %13 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.cf_lexer*, %struct.cf_lexer** %2, align 8
  %15 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.cf_lexer*, %struct.cf_lexer** %2, align 8
  %17 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  ret void
}

declare dso_local i32 @lexer_init(i32*) #1

declare dso_local i32 @da_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
