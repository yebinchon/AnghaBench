; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@abstime = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@bankAccount = common dso_local global i64 0, align 8
@wrfunc = common dso_local global i32 0, align 4
@rdfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 1000000, i32* %9, align 4
  %10 = call i32 @PTW32_FTIME(%struct.TYPE_4__* %8)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abstime, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 1000000, %14
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abstime, i32 0, i32 1), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abstime, i32 0, i32 0), align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abstime, i32 0, i32 0), align 8
  store i64 0, i64* @bankAccount, align 8
  %18 = load i32, i32* @wrfunc, align 4
  %19 = call i64 @pthread_create(i32* %2, i32* null, i32 %18, i8* inttoptr (i64 1 to i8*))
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 @Sleep(i32 100)
  %24 = load i32, i32* @rdfunc, align 4
  %25 = call i64 @pthread_create(i32* %4, i32* null, i32 %24, i8* null)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @Sleep(i32 100)
  %30 = load i32, i32* @wrfunc, align 4
  %31 = call i64 @pthread_create(i32* %3, i32* null, i32 %30, i8* inttoptr (i64 2 to i8*))
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @pthread_join(i32 %35, i8** %5)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @pthread_join(i32 %40, i8** %7)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @pthread_join(i32 %45, i8** %6)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, 10
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 100
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  ret i32 0
}

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
