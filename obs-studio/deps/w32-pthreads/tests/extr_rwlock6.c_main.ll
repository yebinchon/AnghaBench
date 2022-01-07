; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  store i32 0, i32* %1, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* @bankAccount, align 8
  %8 = load i32, i32* @wrfunc, align 4
  %9 = call i64 @pthread_create(i32* %2, i32* null, i32 %8, i32* null)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 @Sleep(i32 50)
  %14 = load i32, i32* @rdfunc, align 4
  %15 = call i64 @pthread_create(i32* %4, i32* null, i32 %14, i32* null)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @Sleep(i32 50)
  %20 = load i32, i32* @wrfunc, align 4
  %21 = call i64 @pthread_create(i32* %3, i32* null, i32 %20, i32* null)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @pthread_join(i32 %25, i8** %5)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @pthread_join(i32 %30, i8** %7)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @pthread_join(i32 %35, i8** %6)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %42, 10
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 10
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 20
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

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
