; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_collectionstore.c_Collection_addCTL.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_collectionstore.c_Collection_addCTL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }

@store_vtbl_t = common dso_local global i32 0, align 4
@ctls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__**, i32)* @Collection_addCTL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Collection_addCTL(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = load i32, i32* @store_vtbl_t, align 4
  %19 = load i32, i32* @ctls, align 4
  %20 = call i32 @offsetof(i32 %18, i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = call i32 @CRYPT_CollectionAddContext(i32* %17, i32 %20, %struct.TYPE_14__* %21, %struct.TYPE_14__* %22, %struct.TYPE_14__** %12)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %25 = icmp ne %struct.TYPE_14__** %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %37 = call i64 @CRYPT_CollectionCreateContextFromChild(i32* %34, i32* %35, %struct.TYPE_14__* %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %15, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %41, align 8
  br label %42

42:                                               ; preds = %29, %26, %5
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = call i32 @Context_Release(%struct.TYPE_14__* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @CRYPT_CollectionAddContext(i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__**) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i64 @CRYPT_CollectionCreateContextFromChild(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @Context_Release(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
