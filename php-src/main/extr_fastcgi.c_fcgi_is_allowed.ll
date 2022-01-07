; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_is_allowed.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_is_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i8 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i8 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@client_sa = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@allowed_clients = common dso_local global %struct.TYPE_16__* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fcgi_is_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcgi_is_allowed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @client_sa, i32 0, i32 1, i32 0), align 8
  %4 = load i64, i64* @AF_UNIX, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %51

7:                                                ; preds = %0
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allowed_clients, align 8
  %9 = icmp ne %struct.TYPE_16__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %51

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @client_sa, i32 0, i32 1, i32 0), align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allowed_clients, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %16
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allowed_clients, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allowed_clients, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = call i32 @memcmp(i8* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @client_sa, i32 0, i32 2, i32 0), i32* %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %51

45:                                               ; preds = %35, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %16

49:                                               ; preds = %16
  br label %50

50:                                               ; preds = %49, %11
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %44, %10, %6
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
