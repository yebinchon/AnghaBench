; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_parser.tab.c_new_case_block.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_parser.tab.c_new_case_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @new_case_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @new_case_block(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  br label %23

23:                                               ; preds = %16, %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %11, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %10, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %47, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %10, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %128

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %11, align 8
  br label %59

59:                                               ; preds = %122, %57
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %62, label %126

62:                                               ; preds = %59
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %12, align 8
  br label %64

64:                                               ; preds = %76, %62
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %12, align 8
  br label %64

80:                                               ; preds = %73
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %126

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %89, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = icmp ne %struct.TYPE_10__* %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %11, align 8
  br label %85

98:                                               ; preds = %85
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %100 = icmp ne %struct.TYPE_8__* %99, null
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %107, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %13, align 8
  br label %102

111:                                              ; preds = %102
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %116, align 8
  br label %121

117:                                              ; preds = %98
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %13, align 8
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %11, align 8
  br label %59

126:                                              ; preds = %83, %59
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %5, align 8
  br label %128

128:                                              ; preds = %126, %56
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
