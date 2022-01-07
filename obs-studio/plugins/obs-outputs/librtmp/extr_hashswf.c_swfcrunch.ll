; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_hashswf.c_swfcrunch.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_hashswf.c_swfcrunch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i64, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"CWS\00", align 1
@CHUNK = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @swfcrunch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @swfcrunch(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.info*
  store %struct.info* %15, %struct.info** %9, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %11, align 8
  %20 = load %struct.info*, %struct.info** %9, align 8
  %21 = getelementptr inbounds %struct.info, %struct.info* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = load %struct.info*, %struct.info** %9, align 8
  %26 = getelementptr inbounds %struct.info, %struct.info* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %10, align 8
  store i8 70, i8* %31, align 1
  %32 = load %struct.info*, %struct.info** %9, align 8
  %33 = getelementptr inbounds %struct.info, %struct.info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.info*, %struct.info** %9, align 8
  %36 = getelementptr inbounds %struct.info, %struct.info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @HMAC_crunch(i32 %37, i8* %38, i64 8)
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  store i8* %41, i8** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub i64 %42, 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.info*, %struct.info** %9, align 8
  %45 = getelementptr inbounds %struct.info, %struct.info* %44, i32 0, i32 1
  store i32 8, i32* %45, align 4
  br label %46

46:                                               ; preds = %34, %4
  %47 = load %struct.info*, %struct.info** %9, align 8
  %48 = getelementptr inbounds %struct.info, %struct.info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %110

51:                                               ; preds = %46
  %52 = load i32, i32* @CHUNK, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %12, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %13, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.info*, %struct.info** %9, align 8
  %58 = getelementptr inbounds %struct.info, %struct.info* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.info*, %struct.info** %9, align 8
  %63 = getelementptr inbounds %struct.info, %struct.info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %101, %51
  %67 = load i32, i32* @CHUNK, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.info*, %struct.info** %9, align 8
  %70 = getelementptr inbounds %struct.info, %struct.info* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %68, i64* %72, align 8
  %73 = load %struct.info*, %struct.info** %9, align 8
  %74 = getelementptr inbounds %struct.info, %struct.info* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i8* %55, i8** %76, align 8
  %77 = load %struct.info*, %struct.info** %9, align 8
  %78 = getelementptr inbounds %struct.info, %struct.info* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* @Z_NO_FLUSH, align 4
  %81 = call i32 @inflate(%struct.TYPE_2__* %79, i32 %80)
  %82 = load i32, i32* @CHUNK, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.info*, %struct.info** %9, align 8
  %85 = getelementptr inbounds %struct.info, %struct.info* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %83, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.info*, %struct.info** %9, align 8
  %93 = getelementptr inbounds %struct.info, %struct.info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.info*, %struct.info** %9, align 8
  %97 = getelementptr inbounds %struct.info, %struct.info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @HMAC_crunch(i32 %98, i8* %55, i64 %99)
  br label %101

101:                                              ; preds = %66
  %102 = load %struct.info*, %struct.info** %9, align 8
  %103 = getelementptr inbounds %struct.info, %struct.info* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %66, label %108

108:                                              ; preds = %101
  %109 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %109)
  br label %123

110:                                              ; preds = %46
  %111 = load i64, i64* %11, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.info*, %struct.info** %9, align 8
  %114 = getelementptr inbounds %struct.info, %struct.info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.info*, %struct.info** %9, align 8
  %118 = getelementptr inbounds %struct.info, %struct.info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @HMAC_crunch(i32 %119, i8* %120, i64 %121)
  br label %123

123:                                              ; preds = %110, %108
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = mul i64 %124, %125
  ret i64 %126
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @HMAC_crunch(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inflate(%struct.TYPE_2__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
