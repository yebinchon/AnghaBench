; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_file_aio_read.c_ngx_file_aio_read.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_file_aio_read.c_ngx_file_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_21__, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_20__, i32, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__, i32*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i64, i32 }

@ngx_file_aio = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"second aio post for \22%V\22\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"aio complete:%d @%O:%uz %V\00", align 1
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"aio read \22%s\22 failed\00", align 1
@ngx_file_aio_event_handler = common dso_local global i32 0, align 4
@NGX_EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"aio_read(\22%V\22) failed\00", align 1
@NGX_ENOSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"aio_read: fd:%d %d\00", align 1
@SIGEV_KEVENT = common dso_local global i32 0, align 4
@ngx_kqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_file_aio_read(%struct.TYPE_17__* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i64, i64* @ngx_file_aio, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ngx_read_file(%struct.TYPE_17__* %18, i32* %19, i64 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %182

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = icmp eq %struct.TYPE_19__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @ngx_file_aio_init(%struct.TYPE_17__* %29, i32* %30)
  %32 = load i64, i64* @NGX_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @NGX_ERROR, align 4
  store i32 %35, i32* %6, align 4
  br label %182

36:                                               ; preds = %28, %23
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %14, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %13, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @NGX_LOG_ALERT, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = call i32 @ngx_log_error(i32 %47, i32 %50, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %52)
  %54 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %54, i32* %6, align 4
  br label %182

55:                                               ; preds = %36
  %56 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = call i32 @ngx_log_debug4(i32 %56, i32 %59, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %63, i64 %64, %struct.TYPE_21__* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %55
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ngx_set_errno(i64 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  br label %182

87:                                               ; preds = %72
  %88 = load i32, i32* @NGX_LOG_CRIT, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ngx_errno, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = call i32 @ngx_log_error(i32 %88, i32 %91, i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %96)
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %6, align 4
  br label %182

99:                                               ; preds = %55
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = call i32 @ngx_memzero(%struct.TYPE_20__* %101, i32 4)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 4
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  store i32* %113, i32** %116, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load i32, i32* @ngx_file_aio_event_handler, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = call i32 @aio_read(%struct.TYPE_20__* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %160

129:                                              ; preds = %99
  %130 = load i32, i32* @ngx_errno, align 4
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @NGX_EAGAIN, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @ngx_read_file(%struct.TYPE_17__* %135, i32* %136, i64 %137, i32 %138)
  store i32 %139, i32* %6, align 4
  br label %182

140:                                              ; preds = %129
  %141 = load i32, i32* @NGX_LOG_CRIT, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = call i32 @ngx_log_error(i32 %141, i32 %144, i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_21__* %147)
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @NGX_ENOSYS, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %140
  store i64 0, i64* @ngx_file_aio, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ngx_read_file(%struct.TYPE_17__* %153, i32* %154, i64 %155, i32 %156)
  store i32 %157, i32* %6, align 4
  br label %182

158:                                              ; preds = %140
  %159 = load i32, i32* @NGX_ERROR, align 4
  store i32 %159, i32* %6, align 4
  br label %182

160:                                              ; preds = %99
  %161 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @ngx_log_debug2(i32 %161, i32 %164, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %181 = call i32 @ngx_file_aio_result(i32 %178, %struct.TYPE_19__* %179, %struct.TYPE_18__* %180)
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %160, %158, %152, %134, %87, %83, %46, %34, %17
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @ngx_read_file(%struct.TYPE_17__*, i32*, i64, i32) #1

declare dso_local i64 @ngx_file_aio_init(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i32, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_set_errno(i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @aio_read(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_file_aio_result(i32, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
