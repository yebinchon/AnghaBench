; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_hex_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_hex_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"invalid hexadecimal data: odd number of digits\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hex_decode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %62, %42, %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32, %27, %22
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %18

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 @get_hex(i32 %49)
  %51 = shl i32 %50, 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %9, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp uge i8* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @ereport(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %45
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @get_hex(i32 %66)
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %10, align 1
  %69 = load i8, i8* %9, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = or i32 %70, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8 %74, i8* %75, align 1
  br label %18

77:                                               ; preds = %18
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i32 @get_hex(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
