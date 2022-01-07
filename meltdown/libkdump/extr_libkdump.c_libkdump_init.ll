; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_init.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }

@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@libkdump_auto_config = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_mem = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mem = common dso_local global i8* null, align 8
@load_thread = common dso_local global i32* null, align 8
@syncthread = common dso_local global i8* null, align 8
@yieldthread = common dso_local global i8* null, align 8
@nopthread = common dso_local global i8* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Started %d load threads\0A\00", align 1
@SIGNAL_HANDLER = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@segfault_handler = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to setup signal handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Successfully setup signal handler\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libkdump_init(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_5__* %4 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @config to i8*), i8* align 8 %13, i64 16, i1 false)
  %14 = call i64 @memcmp(%struct.TYPE_5__* @config, i32* @libkdump_auto_config, i32 16)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @auto_config()
  br label %18

18:                                               ; preds = %16, %2
  %19 = call i32 (...) @check_config()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %125

24:                                               ; preds = %18
  %25 = call i32* @malloc(i32 1228800)
  store i32* %25, i32** @_mem, align 8
  %26 = load i32*, i32** @_mem, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %125

30:                                               ; preds = %24
  %31 = load i32*, i32** @_mem, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = and i64 %32, -4096
  %34 = add i64 %33, 8192
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** @mem, align 8
  %36 = load i8*, i8** @mem, align 8
  %37 = call i32 @memset(i8* %36, i32 171, i32 1187840)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %48, %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 256
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i8*, i8** @mem, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 4096
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = call i32 @flush(i8* %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32* @malloc(i32 %55)
  store i32* %56, i32** @load_thread, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 4
  switch i32 %57, label %63 [
    i32 130, label %58
    i32 128, label %60
    i32 129, label %62
  ]

58:                                               ; preds = %51
  %59 = load i8*, i8** @syncthread, align 8
  store i8* %59, i8** %7, align 8
  br label %65

60:                                               ; preds = %51
  %61 = load i8*, i8** @yieldthread, align 8
  store i8* %61, i8** %7, align 8
  br label %65

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %51, %62
  %64 = load i8*, i8** @nopthread, align 8
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %63, %60, %58
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %66
  %71 = load i32*, i32** @load_thread, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @pthread_create(i32* %74, i32 0, i8* %75, i32 0)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i32*, i32** @load_thread, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pthread_cancel(i32 %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load i32*, i32** @load_thread, align 8
  %96 = call i32 @free(i32* %95)
  %97 = load i32*, i32** @_mem, align 8
  %98 = call i32 @free(i32* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %125

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %66

104:                                              ; preds = %66
  %105 = load i32, i32* @SUCCESS, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %107 = call i32 (i32, i8*, ...) @debug(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 8
  %109 = load i64, i64* @SIGNAL_HANDLER, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load i32, i32* @SIGSEGV, align 4
  %113 = load i32, i32* @segfault_handler, align 4
  %114 = call i64 @signal(i32 %112, i32 %113)
  %115 = load i64, i64* @SIG_ERR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @ERROR, align 4
  %119 = call i32 (i32, i8*, ...) @debug(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %120 = call i32 (...) @libkdump_cleanup()
  store i32 -1, i32* %3, align 4
  br label %125

121:                                              ; preds = %111
  %122 = load i32, i32* @SUCCESS, align 4
  %123 = call i32 (i32, i8*, ...) @debug(i32 %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %104
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %117, %94, %28, %22
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(%struct.TYPE_5__*, i32*, i32) #2

declare dso_local i32 @auto_config(...) #2

declare dso_local i32 @check_config(...) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @flush(i8*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32, i8*, i32) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @debug(i32, i8*, ...) #2

declare dso_local i64 @signal(i32, i32) #2

declare dso_local i32 @libkdump_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
