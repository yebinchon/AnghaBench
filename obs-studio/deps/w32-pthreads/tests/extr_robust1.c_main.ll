; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_robust1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_MUTEX_ROBUST = common dso_local global i32 0, align 4
@lockCount = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4
@owner = common dso_local global i32 0, align 4
@inheritor = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
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
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @pthread_join(i32 %23, i32* null)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @inheritor, align 4
  %29 = call i64 @pthread_create(i32* %3, i32* null, i32 %28, i32* null)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @pthread_join(i32 %33, i32* null)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @lockCount, align 4
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = call i64 @pthread_mutex_lock(i32* @mutex)
  %43 = load i64, i64* @ENOTRECOVERABLE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %48 = load i64, i64* @EPERM, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  store i32 0, i32* @lockCount, align 4
  %56 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %57 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %56)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* @owner, align 4
  %66 = call i64 @pthread_create(i32* %2, i32* null, i32 %65, i32* null)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %2, align 4
  %71 = call i64 @pthread_join(i32 %70, i32* null)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* @inheritor, align 4
  %76 = call i64 @pthread_create(i32* %3, i32* null, i32 %75, i32* null)
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
  %90 = load i64, i64* @ENOTRECOVERABLE, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %95 = load i64, i64* @EPERM, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  store i32 0, i32* @lockCount, align 4
  %103 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %104 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %103)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32, i32* @owner, align 4
  %113 = call i64 @pthread_create(i32* %2, i32* null, i32 %112, i32* null)
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i64 @pthread_join(i32 %117, i32* null)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* @inheritor, align 4
  %123 = call i64 @pthread_create(i32* %3, i32* null, i32 %122, i32* null)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = call i64 @pthread_join(i32 %127, i32* null)
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32, i32* @lockCount, align 4
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = call i64 @pthread_mutex_lock(i32* @mutex)
  %137 = load i64, i64* @ENOTRECOVERABLE, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %142 = load i64, i64* @EPERM, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  store i32 0, i32* @lockCount, align 4
  %150 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %151 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %150)
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = call i64 @pthread_mutex_init(i32* @mutex, i32* %4)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* @owner, align 4
  %160 = call i64 @pthread_create(i32* %2, i32* null, i32 %159, i32* null)
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i32, i32* %2, align 4
  %165 = call i64 @pthread_join(i32 %164, i32* null)
  %166 = icmp eq i64 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i32, i32* @inheritor, align 4
  %170 = call i64 @pthread_create(i32* %3, i32* null, i32 %169, i32* null)
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i32, i32* %3, align 4
  %175 = call i64 @pthread_join(i32 %174, i32* null)
  %176 = icmp eq i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* @lockCount, align 4
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = call i64 @pthread_mutex_lock(i32* @mutex)
  %184 = load i64, i64* @ENOTRECOVERABLE, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %189 = load i64, i64* @EPERM, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %194 = icmp eq i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = call i64 @pthread_mutexattr_destroy(i32* %4)
  %198 = icmp eq i64 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_setrobust(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

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
