; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_read_text_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_read_text_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32)* @read_text_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_text_file(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32* @read_binary_file(i8* %11, i32 %12, i32 %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @VARDATA(i32* %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @VARSIZE(i32* %21)
  %23 = load i64, i64* @VARHDRSZ, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i32 @pg_verifymbstr(i32 %20, i64 %24, i32 0)
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %5, align 8
  br label %28

27:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32*, i32** %5, align 8
  ret i32* %29
}

declare dso_local i32* @read_binary_file(i8*, i32, i32, i32) #1

declare dso_local i32 @pg_verifymbstr(i32, i64, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i64 @VARSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
