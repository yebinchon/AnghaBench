; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_objects.c_HPDF_Obj_Write.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_objects.c_HPDF_Obj_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c" HPDF_Obj_Write\0A\00", align 1
@HPDF_OTYPE_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"#HPDF_Obj_Write obj=0x%08X skipped\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@HPDF_OCLASS_PROXY = common dso_local global i64 0, align 8
@HPDF_SHORT_BUF_SIZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c" R\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Obj_Write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HPDF_OTYPE_HIDDEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @HPDF_PTRACE(i8* %27)
  %29 = load i32, i32* @HPDF_OK, align 4
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HPDF_OCLASS_PROXY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = load i32, i32* @HPDF_SHORT_BUF_SIZ, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %9, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i32, i32* @HPDF_SHORT_BUF_SIZ, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %13, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %8, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 16777215
  %56 = load i8*, i8** %12, align 8
  %57 = call i8* @HPDF_IToA(i8* %51, i32 %55, i8* %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %11, align 8
  store i8 32, i8* %58, align 1
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i8* @HPDF_IToA(i8* %60, i32 %63, i8* %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @HPDF_StrCpy(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @HPDF_Stream_WriteStr(i32 %69, i8* %40)
  store i32 %70, i32* %4, align 4
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %77

72:                                               ; preds = %30
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @HPDF_Obj_WriteValue(i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %36, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @HPDF_IToA(i8*, i32, i8*) #1

declare dso_local i32 @HPDF_StrCpy(i8*, i8*, i8*) #1

declare dso_local i32 @HPDF_Stream_WriteStr(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @HPDF_Obj_WriteValue(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
