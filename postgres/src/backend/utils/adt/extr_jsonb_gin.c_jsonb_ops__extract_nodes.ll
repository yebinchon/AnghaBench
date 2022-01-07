; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_jsonb_ops__extract_nodes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_jsonb_ops__extract_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@jpiKey = common dso_local global i64 0, align 8
@jbvString = common dso_local global i64 0, align 8
@GIN_MAYBE = common dso_local global i64 0, align 8
@GIN_FALSE = common dso_local global i64 0, align 8
@jpiAnyArray = common dso_local global i64 0, align 8
@jpiIndexArray = common dso_local global i64 0, align 8
@GIN_TRUE = common dso_local global i64 0, align 8
@jpiAny = common dso_local global i64 0, align 8
@JSP_GIN_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @jsonb_ops__extract_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jsonb_ops__extract_nodes(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %117

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  br label %21

21:                                               ; preds = %38, %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @jpiKey, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @make_jsp_entry_node(i32 %34)
  %36 = call i32* @lappend(i32* %31, i32* %35)
  store i32* %36, i32** %8, align 8
  br label %37

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %9, align 8
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @jbvString, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %11, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* @GIN_MAYBE, align 8
  store i64 %56, i64* %12, align 8
  br label %89

57:                                               ; preds = %48
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* @GIN_FALSE, align 8
  store i64 %61, i64* %12, align 8
  br label %88

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @jpiAnyArray, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @jpiIndexArray, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %62
  %75 = load i64, i64* @GIN_TRUE, align 8
  store i64 %75, i64* %12, align 8
  br label %87

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @jpiAny, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* @GIN_MAYBE, align 8
  store i64 %83, i64* %12, align 8
  br label %86

84:                                               ; preds = %76
  %85 = load i64, i64* @GIN_FALSE, align 8
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %60
  br label %89

89:                                               ; preds = %88, %55
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @GIN_MAYBE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = call i32* @make_jsp_entry_node_scalar(%struct.TYPE_9__* %94, i32 1)
  store i32* %95, i32** %13, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = call i32* @make_jsp_entry_node_scalar(%struct.TYPE_9__* %96, i32 0)
  store i32* %97, i32** %14, align 8
  %98 = load i32, i32* @JSP_GIN_OR, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call i32* @make_jsp_expr_node_binary(i32 %98, i32* %99, i32* %100)
  store i32* %101, i32** %10, align 8
  br label %109

102:                                              ; preds = %89
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @GIN_TRUE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32* @make_jsp_entry_node_scalar(%struct.TYPE_9__* %103, i32 %107)
  store i32* %108, i32** %10, align 8
  br label %109

109:                                              ; preds = %102, %93
  br label %113

110:                                              ; preds = %42
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = call i32* @make_jsp_entry_node_scalar(%struct.TYPE_9__* %111, i32 0)
  store i32* %112, i32** %10, align 8
  br label %113

113:                                              ; preds = %110, %109
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32* @lappend(i32* %114, i32* %115)
  store i32* %116, i32** %8, align 8
  br label %117

117:                                              ; preds = %113, %4
  %118 = load i32*, i32** %8, align 8
  ret i32* %118
}

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32* @make_jsp_entry_node(i32) #1

declare dso_local i32* @make_jsp_entry_node_scalar(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @make_jsp_expr_node_binary(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
