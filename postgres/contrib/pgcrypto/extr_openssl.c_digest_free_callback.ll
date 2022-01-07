; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_digest_free_callback.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_openssl.c_digest_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i64 0, align 8
@open_digests = common dso_local global %struct.TYPE_5__* null, align 8
@CurrentResourceOwner = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"pgcrypto digest reference leak: digest %p still referenced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*)* @digest_free_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digest_free_callback(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @RESOURCE_RELEASE_AFTER_LOCKS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %41

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @open_digests, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  br label %17

17:                                               ; preds = %40, %15
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %10, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CurrentResourceOwner, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @WARNING, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = call i32 @free_openssl_digest(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %37, %20
  br label %17

41:                                               ; preds = %14, %17
  ret void
}

declare dso_local i32 @elog(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @free_openssl_digest(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
