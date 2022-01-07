; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t.c_main.c"
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
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* @bankAccount, align 8
  %10 = load i32, i32* @wrfunc, align 4
  %11 = call i64 @pthread_create(i32* %2, i32* null, i32 %10, i8* null)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 @Sleep(i32 500)
  %16 = load i32, i32* @rdfunc, align 4
  %17 = call i64 @pthread_create(i32* %4, i32* null, i32 %16, i8* inttoptr (i64 1 to i8*))
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i32 @Sleep(i32 500)
  %22 = load i32, i32* @wrfunc, align 4
  %23 = call i64 @pthread_create(i32* %3, i32* null, i32 %22, i8* null)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i32 @Sleep(i32 500)
  %28 = load i32, i32* @rdfunc, align 4
  %29 = call i64 @pthread_create(i32* %5, i32* null, i32 %28, i8* inttoptr (i64 2 to i8*))
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @pthread_join(i32 %33, i8** %6)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @pthread_join(i32 %38, i8** %8)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @pthread_join(i32 %43, i8** %7)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @pthread_join(i32 %48, i8** %9)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 10
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %67, 20
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %73, 20
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  ret i32 0
}

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
