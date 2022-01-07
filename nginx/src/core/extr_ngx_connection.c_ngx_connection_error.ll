; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_connection_error.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_connection_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@NGX_ECONNRESET = common dso_local global i32 0, align 4
@NGX_EPIPE = common dso_local global i32 0, align 4
@NGX_ENOTCONN = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@NGX_ECONNREFUSED = common dso_local global i32 0, align 4
@NGX_ENETDOWN = common dso_local global i32 0, align 4
@NGX_ENETUNREACH = common dso_local global i32 0, align 4
@NGX_EHOSTDOWN = common dso_local global i32 0, align 4
@NGX_EHOSTUNREACH = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_ECONNABORTED = common dso_local global i32 0, align 4
@NGX_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_connection_error(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NGX_ECONNRESET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 130
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %77

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NGX_ECONNRESET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NGX_EPIPE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NGX_ENOTCONN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NGX_ECONNREFUSED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NGX_ENETDOWN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NGX_ENETUNREACH, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @NGX_EHOSTDOWN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @NGX_EHOSTUNREACH, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %49, %45, %41, %37, %33, %29, %25, %21, %18
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %63 [
    i32 129, label %61
    i32 130, label %61
    i32 128, label %61
  ]

61:                                               ; preds = %57, %57, %57
  %62 = load i32, i32* @NGX_LOG_INFO, align 4
  store i32 %62, i32* %8, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @NGX_LOG_ALERT, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @ngx_log_error(i32 %69, i32 %72, i32 %73, i8* %74)
  %76 = load i32, i32* @NGX_ERROR, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
