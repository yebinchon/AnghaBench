; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_ROBUST = common dso_local global i32 0, align 4
@lockCount = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@owner = common dso_local global i32 0, align 4
@inheritor = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_NORMAL = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_ERRORCHECK = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i64 @pthread_mutexattr_init(i32* %4)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @PTHREAD_MUTEX_ROBUST, align 4
  %10 = call i64 @pthread_mutexattr_setrobust(i32* %4, i32 %9)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i32 0, i32* @lockCount, align 4
  %14 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @owner, align 4
  %19 = call i64 @pthread_create(i32* %2, i32* null, i32 %18, i32* null)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 @Sleep(i32 100)
  %24 = load i32, i32* @inheritor, align 4
  %25 = call i64 @pthread_create(i32* %3, i32* null, i32 %24, i32* null)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @pthread_join(i32 %29, i32* null)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @pthread_join(i32 %34, i32* null)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @lockCount, align 4
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i64 @pthread_mutex_lock(i32* @mutex)
  %44 = load i64, i64* @ENOTRECOVERABLE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  store i32 0, i32* @lockCount, align 4
  %52 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %53 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* @owner, align 4
  %62 = call i64 @pthread_create(i32* %2, i32* null, i32 %61, i32* null)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = call i32 @Sleep(i32 100)
  %67 = load i32, i32* @inheritor, align 4
  %68 = call i64 @pthread_create(i32* %3, i32* null, i32 %67, i32* null)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = call i64 @pthread_join(i32 %72, i32* null)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i64 @pthread_join(i32 %77, i32* null)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* @lockCount, align 4
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = call i64 @pthread_mutex_lock(i32* @mutex)
  %87 = load i64, i64* @ENOTRECOVERABLE, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  store i32 0, i32* @lockCount, align 4
  %95 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %96 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* @owner, align 4
  %105 = call i64 @pthread_create(i32* %2, i32* null, i32 %104, i32* null)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = call i32 @Sleep(i32 100)
  %110 = load i32, i32* @inheritor, align 4
  %111 = call i64 @pthread_create(i32* %3, i32* null, i32 %110, i32* null)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %2, align 4
  %116 = call i64 @pthread_join(i32 %115, i32* null)
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i64 @pthread_join(i32 %120, i32* null)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* @lockCount, align 4
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = call i64 @pthread_mutex_lock(i32* @mutex)
  %130 = load i64, i64* @ENOTRECOVERABLE, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  store i32 0, i32* @lockCount, align 4
  %138 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %139 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %138)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32, i32* @owner, align 4
  %148 = call i64 @pthread_create(i32* %2, i32* null, i32 %147, i32* null)
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = call i32 @Sleep(i32 100)
  %153 = load i32, i32* @inheritor, align 4
  %154 = call i64 @pthread_create(i32* %3, i32* null, i32 %153, i32* null)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i32, i32* %2, align 4
  %159 = call i64 @pthread_join(i32 %158, i32* null)
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = call i64 @pthread_join(i32 %163, i32* null)
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i32, i32* @lockCount, align 4
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = call i64 @pthread_mutex_lock(i32* @mutex)
  %173 = load i64, i64* @ENOTRECOVERABLE, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = call i64 @pthread_mutexattr_destroy(i32* %4)
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_setrobust(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
