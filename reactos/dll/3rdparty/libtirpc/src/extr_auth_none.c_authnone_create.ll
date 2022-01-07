; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_none.c_authnone_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_none.c_authnone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authnone_private = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@authnone_private = common dso_local global %struct.authnone_private* null, align 8
@authnone_lock = external dso_local global i32, align 4
@_null_auth = common dso_local global i32 0, align 4
@MAX_MARSHAL_SIZE = common dso_local global i64 0, align 8
@XDR_ENCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @authnone_create() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.authnone_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load %struct.authnone_private*, %struct.authnone_private** @authnone_private, align 8
  store %struct.authnone_private* %5, %struct.authnone_private** %2, align 8
  %6 = call i32 @mutex_lock(i32* @authnone_lock)
  %7 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %8 = icmp eq %struct.authnone_private* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = call i64 @calloc(i32 1, i32 20)
  %11 = inttoptr i64 %10 to %struct.authnone_private*
  store %struct.authnone_private* %11, %struct.authnone_private** %2, align 8
  %12 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %13 = icmp eq %struct.authnone_private* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @mutex_unlock(i32* @authnone_lock)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %1, align 8
  br label %63

16:                                               ; preds = %9
  %17 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  store %struct.authnone_private* %17, %struct.authnone_private** @authnone_private, align 8
  br label %18

18:                                               ; preds = %16, %0
  %19 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %20 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @_null_auth, align 4
  %25 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %26 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %29 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %24, i32* %30, align 4
  %31 = call i32 (...) @authnone_ops()
  %32 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %33 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  store i32* %3, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %37 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @MAX_MARSHAL_SIZE, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @XDR_ENCODE, align 4
  %42 = call i32 @xdrmem_create(i32* %35, i32 %38, i32 %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %45 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = call i32 @xdr_opaque_auth(i32* %43, i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %50 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @xdr_opaque_auth(i32* %48, i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @XDR_GETPOS(i32* %53)
  %55 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %56 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @XDR_DESTROY(i32* %57)
  br label %59

59:                                               ; preds = %23, %18
  %60 = call i32 @mutex_unlock(i32* @authnone_lock)
  %61 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %62 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %61, i32 0, i32 0
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %1, align 8
  br label %63

63:                                               ; preds = %59, %14
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  ret %struct.TYPE_3__* %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @authnone_ops(...) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_opaque_auth(i32*, i32*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
