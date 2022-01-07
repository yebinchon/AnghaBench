; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_mygetservbyname_r.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_mygetservbyname_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@servbyname_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.servent*, i8*, i64, %struct.servent**)* @mygetservbyname_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mygetservbyname_r(i8* %0, i8* %1, %struct.servent* %2, i8* %3, i64 %4, %struct.servent** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.servent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.servent**, align 8
  %13 = alloca %struct.servent*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.servent* %2, %struct.servent** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.servent** %5, %struct.servent*** %12, align 8
  %15 = call i32 (...) @PFUNC()
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @MUTEX_LOCK(i32* @servbyname_lock)
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.servent* @getservbyname(i8* %19, i8* %20)
  store %struct.servent* %21, %struct.servent** %13, align 8
  %22 = load %struct.servent*, %struct.servent** %13, align 8
  %23 = icmp ne %struct.servent* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = load %struct.servent*, %struct.servent** %9, align 8
  %26 = load %struct.servent*, %struct.servent** %13, align 8
  %27 = bitcast %struct.servent* %25 to i8*
  %28 = bitcast %struct.servent* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.servent*, %struct.servent** %9, align 8
  %30 = load %struct.servent**, %struct.servent*** %12, align 8
  store %struct.servent* %29, %struct.servent** %30, align 8
  store i32 0, i32* %14, align 4
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.servent**, %struct.servent*** %12, align 8
  store %struct.servent* null, %struct.servent** %32, align 8
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = call i32 @MUTEX_UNLOCK(i32* @servbyname_lock)
  %36 = load i32, i32* %14, align 4
  ret i32 %36
}

declare dso_local i32 @PFUNC(...) #1

declare dso_local i32 @MUTEX_LOCK(i32*) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MUTEX_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
