; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_shmem.c_ngx_shm_remap.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_shmem.c_ngx_shm_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32 }

@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"UnmapViewOfFile(%p) of file mapping \22%V\22 failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"MapViewOfFileEx(%uz, %p) of file mapping \22%V\22 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_shm_remap(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = call i64 @UnmapViewOfFile(i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* @NGX_LOG_ALERT, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ngx_errno, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 (i32, i32, i32, i8*, i32, i32*, ...) @ngx_log_error(i32 %12, i32 %15, i32 %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %22)
  %24 = load i32, i32* @NGX_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FILE_MAP_WRITE, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @MapViewOfFileEx(i32 %28, i32 %29, i32 0, i32 0, i32 0, i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @NGX_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %25
  %41 = load i32, i32* @NGX_LOG_ALERT, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ngx_errno, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 (i32, i32, i32, i8*, i32, i32*, ...) @ngx_log_error(i32 %41, i32 %44, i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32* %49, i32* %51)
  %53 = load i32, i32* @NGX_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %40, %38, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32*, ...) #1

declare dso_local i32* @MapViewOfFileEx(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
