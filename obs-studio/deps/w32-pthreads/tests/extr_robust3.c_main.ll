; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust3.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_ROBUST = common dso_local global i32 0, align 4
@lockCount = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@owner = common dso_local global i32 0, align 4
@inheritor = common dso_local global i32 0, align 4
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
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  store i32 0, i32* @lockCount, align 4
  %55 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %56 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* @owner, align 4
  %65 = call i64 @pthread_create(i32* %2, i32* null, i32 %64, i32* null)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = call i32 @Sleep(i32 100)
  %70 = load i32, i32* @inheritor, align 4
  %71 = call i64 @pthread_create(i32* %3, i32* null, i32 %70, i32* null)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i64 @pthread_join(i32 %75, i32* null)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @pthread_join(i32 %80, i32* null)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* @lockCount, align 4
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = call i64 @pthread_mutex_lock(i32* @mutex)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  store i32 0, i32* @lockCount, align 4
  %101 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %102 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* @owner, align 4
  %111 = call i64 @pthread_create(i32* %2, i32* null, i32 %110, i32* null)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = call i32 @Sleep(i32 100)
  %116 = load i32, i32* @inheritor, align 4
  %117 = call i64 @pthread_create(i32* %3, i32* null, i32 %116, i32* null)
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %2, align 4
  %122 = call i64 @pthread_join(i32 %121, i32* null)
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i32, i32* %3, align 4
  %127 = call i64 @pthread_join(i32 %126, i32* null)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* @lockCount, align 4
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = call i64 @pthread_mutex_lock(i32* @mutex)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  store i32 0, i32* @lockCount, align 4
  %147 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %148 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %147)
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %153 = icmp eq i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i32, i32* @owner, align 4
  %157 = call i64 @pthread_create(i32* %2, i32* null, i32 %156, i32* null)
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = call i32 @Sleep(i32 100)
  %162 = load i32, i32* @inheritor, align 4
  %163 = call i64 @pthread_create(i32* %3, i32* null, i32 %162, i32* null)
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i32, i32* %2, align 4
  %168 = call i64 @pthread_join(i32 %167, i32* null)
  %169 = icmp eq i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i64 @pthread_join(i32 %172, i32* null)
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i32, i32* @lockCount, align 4
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = call i64 @pthread_mutex_lock(i32* @mutex)
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %186 = icmp eq i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = call i64 @pthread_mutexattr_destroy(i32* %4)
  %194 = icmp eq i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
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

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

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
