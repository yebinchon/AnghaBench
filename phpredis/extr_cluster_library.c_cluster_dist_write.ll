; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_dist_write.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_dist_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__** }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64, i32)* @cluster_dist_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_dist_write(%struct.TYPE_10__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %16, i64 %19
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @zend_hash_num_elements(i64 %35)
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %25, %4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32* @emalloc(i32 %45)
  store i32* %46, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %57, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @fyshuffle(i32* %61, i32 %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %123, %60
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %126

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %123

79:                                               ; preds = %71, %68
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_11__* @cluster_slot_sock(%struct.TYPE_10__* %80, i64 %83, i32 %88)
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %13, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = icmp ne %struct.TYPE_11__* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %79
  br label %123

93:                                               ; preds = %79
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %107 = call i64 @cluster_send_readonly(%struct.TYPE_11__* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105, %100, %93
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @CLUSTER_SEND_PAYLOAD(%struct.TYPE_11__* %110, i8* %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %118, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @efree(i32* %119)
  store i32 0, i32* %5, align 4
  br label %129

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %105
  br label %123

123:                                              ; preds = %122, %92, %78
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %64

126:                                              ; preds = %64
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @efree(i32* %127)
  store i32 -1, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %115
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @zend_hash_num_elements(i64) #1

declare dso_local i32* @emalloc(i32) #1

declare dso_local i32 @fyshuffle(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @cluster_slot_sock(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @cluster_send_readonly(%struct.TYPE_11__*) #1

declare dso_local i64 @CLUSTER_SEND_PAYLOAD(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
