; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_query_accept.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_query_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MEDIATYPE_Stream = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@MEDIASUBTYPE_MPEG1Audio = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@MEDIASUBTYPE_MPEG1Video = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MPEG-1 video streams not yet supported.\0A\00", align 1
@MEDIASUBTYPE_MPEG1System = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"MPEG-1 system streams not yet supported.\0A\00", align 1
@MEDIASUBTYPE_MPEG1VideoCD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"MPEG-1 VideoCD streams not yet supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @MPEGSplitter_query_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEGSplitter_query_accept(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i64 @IsEqualIID(i32* %7, i32* @MEDIATYPE_Stream)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @S_FALSE, align 4
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i64 @IsEqualIID(i32* %14, i32* @MEDIASUBTYPE_MPEG1Audio)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i64 @IsEqualIID(i32* %21, i32* @MEDIASUBTYPE_MPEG1Video)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i64 @IsEqualIID(i32* %28, i32* @MEDIASUBTYPE_MPEG1System)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %46

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i64 @IsEqualIID(i32* %35, i32* @MEDIASUBTYPE_MPEG1VideoCD)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @debugstr_guid(i32* %42)
  %44 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %38
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* @S_FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %17, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @IsEqualIID(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
