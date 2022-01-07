; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_tree.c_tree_add_unmatched.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_pcy_tree.c_tree_add_unmatched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 }

@POLICY_DATA_FLAG_SHARED_QUALIFIERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, i32*, %struct.TYPE_15__*, i32*)* @tree_add_unmatched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_add_unmatched(i32* %0, %struct.TYPE_17__* %1, i32* %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %15, %5
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = call i32 @node_critical(%struct.TYPE_15__* %23)
  %25 = call %struct.TYPE_16__* @policy_data_new(i32* null, i32* %22, i32 %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %12, align 8
  %26 = icmp eq %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %51

28:                                               ; preds = %21
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @POLICY_DATA_FLAG_SHARED_QUALIFIERS, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @level_add_node(i32* %41, %struct.TYPE_16__* %42, %struct.TYPE_15__* %43, i32* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %49 = call i32 @policy_data_free(%struct.TYPE_16__* %48)
  store i32 0, i32* %6, align 4
  br label %51

50:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %47, %27
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_16__* @policy_data_new(i32*, i32*, i32) #1

declare dso_local i32 @node_critical(%struct.TYPE_15__*) #1

declare dso_local i32* @level_add_node(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @policy_data_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
