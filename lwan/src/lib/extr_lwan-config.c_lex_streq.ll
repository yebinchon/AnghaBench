; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_streq.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_lex_streq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexer*, i8*, i64)* @lex_streq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_streq(%struct.lexer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lexer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.lexer* %0, %struct.lexer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.lexer*, %struct.lexer** %5, align 8
  %9 = call i64 @remaining(%struct.lexer* %8)
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load %struct.lexer*, %struct.lexer** %5, align 8
  %15 = getelementptr inbounds %struct.lexer, %struct.lexer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @strncmp(i32 %16, i8* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %13, %12
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @remaining(%struct.lexer*) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
