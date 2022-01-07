; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_init_request.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { void (...)*, void (...)*, void (...)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @fcgi_init_request(i32 %0, void (...)* %1, void (...)* %2, void (...)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca void (...)*, align 8
  %7 = alloca void (...)*, align 8
  %8 = alloca void (...)*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store void (...)* %1, void (...)** %6, align 8
  store void (...)* %2, void (...)** %7, align 8
  store void (...)* %3, void (...)** %8, align 8
  %10 = call %struct.TYPE_6__* @calloc(i32 1, i32 56)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 -1, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load void (...)*, void (...)** %6, align 8
  %24 = icmp ne void (...)* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load void (...)*, void (...)** %6, align 8
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi void (...)* [ %26, %25 ], [ @fcgi_hook_dummy, %27 ]
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store void (...)* %29, void (...)** %32, align 8
  %33 = load void (...)*, void (...)** %7, align 8
  %34 = icmp ne void (...)* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load void (...)*, void (...)** %7, align 8
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi void (...)* [ %36, %35 ], [ @fcgi_hook_dummy, %37 ]
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store void (...)* %39, void (...)** %42, align 8
  %43 = load void (...)*, void (...)** %8, align 8
  %44 = icmp ne void (...)* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load void (...)*, void (...)** %8, align 8
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi void (...)* [ %46, %45 ], [ @fcgi_hook_dummy, %47 ]
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store void (...)* %49, void (...)** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = call i32 @fcgi_hash_init(i32* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %56
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local void @fcgi_hook_dummy(...) #1

declare dso_local i32 @fcgi_hash_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
