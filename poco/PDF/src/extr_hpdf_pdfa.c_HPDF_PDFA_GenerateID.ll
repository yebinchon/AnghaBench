; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_HPDF_PDFA_GenerateID.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_HPDF_PDFA_GenerateID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@HPDF_MD5_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"libHaru\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_PDFA_GenerateID(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = call i32 @time(i32* null)
  store i32 %15, i32* %9, align 4
  %16 = call i64 @ctime(i32* %9)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %22 = call i64 @HPDF_Dict_GetItem(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %85, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @HPDF_Array_New(i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @HPDF_Dict_Add(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* @HPDF_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32, %25
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %87

45:                                               ; preds = %32
  %46 = call i32 @HPDF_MD5Init(i32* %8)
  %47 = call i32 @HPDF_MD5Update(i32* %8, i32* bitcast ([8 x i8]* @.str.1 to i32*), i32 7)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @HPDF_StrLen(i8* %50, i32 -1)
  %52 = call i32 @HPDF_MD5Update(i32* %8, i32* %48, i32 %51)
  %53 = call i32 @HPDF_MD5Final(i32* %14, i32* %8)
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %59 = call i32 @HPDF_Binary_New(i32 %57, i32* %14, i32 %58)
  %60 = call i64 @HPDF_Array_Add(i64 %54, i32 %59)
  %61 = load i64, i64* @HPDF_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %45
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %87

68:                                               ; preds = %45
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HPDF_MD5_KEY_LEN, align 4
  %74 = call i32 @HPDF_Binary_New(i32 %72, i32* %14, i32 %73)
  %75 = call i64 @HPDF_Array_Add(i64 %69, i32 %74)
  %76 = load i64, i64* @HPDF_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %87

83:                                               ; preds = %68
  %84 = load i64, i64* @HPDF_OK, align 8
  store i64 %84, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %87

85:                                               ; preds = %1
  %86 = load i64, i64* @HPDF_OK, align 8
  store i64 %86, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %83, %78, %63, %40
  %88 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @time(i32*) #2

declare dso_local i64 @ctime(i32*) #2

declare dso_local i64 @HPDF_Dict_GetItem(i32, i8*, i32) #2

declare dso_local i64 @HPDF_Array_New(i32) #2

declare dso_local i64 @HPDF_Dict_Add(i32, i8*, i64) #2

declare dso_local i32 @HPDF_MD5Init(i32*) #2

declare dso_local i32 @HPDF_MD5Update(i32*, i32*, i32) #2

declare dso_local i32 @HPDF_StrLen(i8*, i32) #2

declare dso_local i32 @HPDF_MD5Final(i32*, i32*) #2

declare dso_local i64 @HPDF_Array_Add(i64, i32) #2

declare dso_local i32 @HPDF_Binary_New(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
