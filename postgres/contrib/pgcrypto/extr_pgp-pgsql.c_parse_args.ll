; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_expect = type { i32 }

@PXE_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.debug_expect*)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32* %0, i32* %1, i32 %2, %struct.debug_expect* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_expect*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.debug_expect* %3, %struct.debug_expect** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @downcase_convert(i32* %16, i32 %17)
  store i8* %18, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %15, align 8
  br label %20

20:                                               ; preds = %81, %4
  %21 = load i8*, i8** %15, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %20
  %25 = load i32, i32* @PXE_ARGUMENT_ERROR, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = call i8* @getword(i8* %26, i8** %10, i32* %12)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %15, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 61
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %82

34:                                               ; preds = %24
  %35 = load i8*, i8** %15, align 8
  %36 = call i8* @getword(i8* %35, i8** %11, i32* %13)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %50

42:                                               ; preds = %34
  %43 = load i8*, i8** %15, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %15, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 44
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %82

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %55, %50
  br label %82

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %77 = call i32 @set_arg(i32* %73, i8* %74, i8* %75, %struct.debug_expect* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %82

81:                                               ; preds = %64
  br label %20

82:                                               ; preds = %80, %63, %48, %33, %20
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @pfree(i8* %83)
  %85 = load i32, i32* %14, align 4
  ret i32 %85
}

declare dso_local i8* @downcase_convert(i32*, i32) #1

declare dso_local i8* @getword(i8*, i8**, i32*) #1

declare dso_local i32 @set_arg(i32*, i8*, i8*, %struct.debug_expect*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
