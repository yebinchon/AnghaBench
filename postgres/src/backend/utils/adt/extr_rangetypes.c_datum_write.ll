; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_datum_write.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_datum_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot store a toast pointer inside a range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i8, i32, i8)* @datum_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @datum_write(i8* %0, i32 %1, i32 %2, i8 signext %3, i32 %4, i8 signext %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i8 %5, i8* %12, align 1
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %6
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %10, align 1
  %20 = call i64 @att_align_nominal(i8* %18, i8 signext %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @store_att_byval(i8* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %13, align 4
  br label %121

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %86

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @DatumGetPointer(i32 %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i64 @VARATT_IS_EXTERNAL(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %85

39:                                               ; preds = %30
  %40 = load i8*, i8** %14, align 8
  %41 = call i64 @VARATT_IS_SHORT(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @VARSIZE_SHORT(i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  br label %84

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = load i8, i8* %12, align 1
  %53 = call i64 @TYPE_IS_PACKABLE(i32 %51, i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load i8*, i8** %14, align 8
  %57 = call i64 @VARATT_CAN_MAKE_SHORT(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @VARATT_CONVERTED_SHORT_SIZE(i8* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @SET_VARSIZE_SHORT(i8* %62, i32 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @VARDATA(i8* %67)
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @memcpy(i8* %66, i8* %68, i32 %70)
  br label %83

72:                                               ; preds = %55, %50
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %10, align 1
  %75 = call i64 @att_align_nominal(i8* %73, i8 signext %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %7, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @VARSIZE(i8* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @memcpy(i8* %79, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %59
  br label %84

84:                                               ; preds = %83, %43
  br label %85

85:                                               ; preds = %84, %36
  br label %120

86:                                               ; preds = %27
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, -2
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i8, i8* %10, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 99
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @DatumGetCString(i32 %95)
  %97 = call i32 @strlen(i32 %96)
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i8* @DatumGetPointer(i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @memcpy(i8* %99, i8* %101, i32 %102)
  br label %119

104:                                              ; preds = %86
  %105 = load i8*, i8** %7, align 8
  %106 = load i8, i8* %10, align 1
  %107 = call i64 @att_align_nominal(i8* %105, i8 signext %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %13, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @DatumGetPointer(i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @memcpy(i8* %114, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %104, %89
  br label %120

120:                                              ; preds = %119, %85
  br label %121

121:                                              ; preds = %120, %17
  %122 = load i32, i32* %13, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %7, align 8
  %126 = load i8*, i8** %7, align 8
  ret i8* %126
}

declare dso_local i64 @att_align_nominal(i8*, i8 signext) #1

declare dso_local i32 @store_att_byval(i8*, i32, i32) #1

declare dso_local i8* @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @VARATT_IS_SHORT(i8*) #1

declare dso_local i32 @VARSIZE_SHORT(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @TYPE_IS_PACKABLE(i32, i8 signext) #1

declare dso_local i64 @VARATT_CAN_MAKE_SHORT(i8*) #1

declare dso_local i32 @VARATT_CONVERTED_SHORT_SIZE(i8*) #1

declare dso_local i32 @SET_VARSIZE_SHORT(i8*, i32) #1

declare dso_local i8* @VARDATA(i8*) #1

declare dso_local i32 @VARSIZE(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
