; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_write_strref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_write_strref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { i64* }
%struct.strref = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_lexer*, %struct.strref*)* @cf_lexer_write_strref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_lexer_write_strref(%struct.cf_lexer* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.cf_lexer*, align 8
  %4 = alloca %struct.strref*, align 8
  store %struct.cf_lexer* %0, %struct.cf_lexer** %3, align 8
  store %struct.strref* %1, %struct.strref** %4, align 8
  %5 = load %struct.cf_lexer*, %struct.cf_lexer** %3, align 8
  %6 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load %struct.strref*, %struct.strref** %4, align 8
  %9 = getelementptr inbounds %struct.strref, %struct.strref* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.strref*, %struct.strref** %4, align 8
  %12 = getelementptr inbounds %struct.strref, %struct.strref* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @strncpy(i64* %7, i32 %10, i64 %13)
  %15 = load %struct.cf_lexer*, %struct.cf_lexer** %3, align 8
  %16 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.strref*, %struct.strref** %4, align 8
  %19 = getelementptr inbounds %struct.strref, %struct.strref* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load %struct.strref*, %struct.strref** %4, align 8
  %23 = getelementptr inbounds %struct.strref, %struct.strref* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cf_lexer*, %struct.cf_lexer** %3, align 8
  %26 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 %24
  store i64* %28, i64** %26, align 8
  ret void
}

declare dso_local i32 @strncpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
