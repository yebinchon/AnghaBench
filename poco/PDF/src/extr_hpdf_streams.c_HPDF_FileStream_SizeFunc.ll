; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_FileStream_SizeFunc.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_FileStream_SizeFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c" HPDF_FileReader_SizeFunc\0A\00", align 1
@HPDF_FILE_IO_ERROR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_FileStream_SizeFunc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @HPDF_FTELL(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HPDF_FILE_IO_ERROR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @HPDF_FERROR(i32 %19)
  %21 = call i32 @HPDF_SetError(i32 %17, i32 %18, i32 %20)
  store i32 0, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i64 @HPDF_FSEEK(i32 %23, i32 0, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HPDF_FILE_IO_ERROR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @HPDF_FERROR(i32 %32)
  %34 = call i32 @HPDF_SetError(i32 %30, i32 %31, i32 %33)
  store i32 0, i32* %2, align 4
  br label %63

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @HPDF_FTELL(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HPDF_FILE_IO_ERROR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @HPDF_FERROR(i32 %44)
  %46 = call i32 @HPDF_SetError(i32 %42, i32 %43, i32 %45)
  store i32 0, i32* %2, align 4
  br label %63

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i64 @HPDF_FSEEK(i32 %48, i32 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HPDF_FILE_IO_ERROR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @HPDF_FERROR(i32 %58)
  %60 = call i32 @HPDF_SetError(i32 %56, i32 %57, i32 %59)
  store i32 0, i32* %2, align 4
  br label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %53, %39, %27, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_FTELL(i32) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i32 @HPDF_FERROR(i32) #1

declare dso_local i64 @HPDF_FSEEK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
