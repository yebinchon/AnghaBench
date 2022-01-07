; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_enum.c_DoDSoundCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_enum.c_DoDSoundCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DoDSoundCallback.SoundDriverW = internal global i8* bitcast ([21 x i32]* @.str to i8*), align 8
@.str = private unnamed_addr constant [21 x i32] [i32 80, i32 114, i32 105, i32 109, i32 97, i32 114, i32 121, i32 32, i32 83, i32 111, i32 117, i32 110, i32 100, i32 32, i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 0], align 4
@DoDSoundCallback.SoundDriverA = internal global i8* bitcast ([21 x i32]* @.str to i8*), align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DoDSoundCallback(i32 (i32, i8*, i8*, i32)* %0, i32 (i32, i8*, i8*, i32)* %1, i32 %2, i64 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i8*, i8*, i32)*, align 8
  %10 = alloca i32 (i32, i8*, i8*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [200 x i8], align 16
  %17 = alloca [200 x i8], align 16
  store i32 (i32, i8*, i8*, i32)* %0, i32 (i32, i8*, i8*, i32)** %9, align 8
  store i32 (i32, i8*, i8*, i32)* %1, i32 (i32, i8*, i8*, i32)** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = bitcast [200 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 200, i1 false)
  %19 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** %10, align 8
  %20 = icmp ne i32 (i32, i8*, i8*, i32)* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %7
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %25, align 16
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %28 = ptrtoint i8* %27 to i32
  %29 = load i8*, i8** @DoDSoundCallback.SoundDriverW, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @LoadResourceString(i64 %26, i32 %28, i32 200, i32 %30, i32 %31)
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 199
  store i8 0, i8* %33, align 1
  br label %40

34:                                               ; preds = %21
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @ASSERT(i8* %35)
  %37 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @wcscpy(i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %34, %24
  %41 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 %41(i32 %42, i8* %43, i8* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %84

47:                                               ; preds = %7
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %51, align 16
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %54 = ptrtoint i8* %53 to i32
  %55 = load i8*, i8** @DoDSoundCallback.SoundDriverA, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @LoadResourceString(i64 %52, i32 %54, i32 200, i32 %56, i32 %57)
  %59 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 199
  store i8 0, i8* %59, align 1
  br label %67

60:                                               ; preds = %47
  %61 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %61, align 16
  %62 = load i32, i32* @CP_ACP, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %65 = call i32 @WideCharToMultiByte(i32 %62, i32 0, i8* %63, i32 -1, i8* %64, i32 200, i32* null, i32* null)
  %66 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 199
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %60, %50
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %68, align 16
  %69 = load i8*, i8** %13, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @CP_ACP, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %75 = call i32 @WideCharToMultiByte(i32 %72, i32 0, i8* %73, i32 -1, i8* %74, i32 200, i32* null, i32* null)
  %76 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 199
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %81 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %82 = load i32, i32* %15, align 4
  %83 = call i32 %78(i32 %79, i8* %80, i8* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %77, %40
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LoadResourceString(i64, i32, i32, i32, i32) #2

declare dso_local i32 @ASSERT(i8*) #2

declare dso_local i32 @wcscpy(i8*, i8*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
