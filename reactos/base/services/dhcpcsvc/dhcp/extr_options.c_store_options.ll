; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_options.c_store_options.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_options.c_store_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_cache = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_options(i8* %0, i32 %1, %struct.tree_cache** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree_cache**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.tree_cache** %2, %struct.tree_cache*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 1024)
  store i32 0, i32* %17, align 4
  br label %25

25:                                               ; preds = %160, %7
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %163

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load %struct.tree_cache**, %struct.tree_cache*** %10, align 8
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %36, i64 %38
  %40 = load %struct.tree_cache*, %struct.tree_cache** %39, align 8
  %41 = icmp ne %struct.tree_cache* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %160

43:                                               ; preds = %29
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %160

50:                                               ; preds = %43
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load %struct.tree_cache**, %struct.tree_cache*** %10, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %54, i64 %56
  %58 = load %struct.tree_cache*, %struct.tree_cache** %57, align 8
  %59 = getelementptr inbounds %struct.tree_cache, %struct.tree_cache* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %21, align 4
  store i32 0, i32* %18, align 4
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %116, %50
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %159

65:                                               ; preds = %62
  %66 = load i32, i32* %21, align 4
  %67 = icmp sgt i32 %66, 255
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %21, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 255, %68 ], [ %70, %69 ]
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %22, align 1
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = load i8, i8* %22, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %78, %80
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %85, %86
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %22, align 1
  br label %106

89:                                               ; preds = %77, %71
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32, i32* %15, align 4
  %95 = load i8, i8* %22, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %14, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %101, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %22, align 1
  br label %105

105:                                              ; preds = %100, %93, %89
  br label %106

106:                                              ; preds = %105, %84
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 2
  %109 = load i8, i8* %22, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %20, align 4
  store i32 %115, i32* %15, align 4
  br label %159

116:                                              ; preds = %106
  %117 = load i32, i32* %19, align 4
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %118, i8* %122, align 1
  %123 = load i8, i8* %22, align 1
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load %struct.tree_cache**, %struct.tree_cache*** %10, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %134, i64 %136
  %138 = load %struct.tree_cache*, %struct.tree_cache** %137, align 8
  %139 = getelementptr inbounds %struct.tree_cache, %struct.tree_cache* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = load i8, i8* %22, align 1
  %145 = call i32 @memcpy(i8* %133, i64 %143, i8 zeroext %144)
  %146 = load i8, i8* %22, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32, i32* %21, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %21, align 4
  %150 = load i8, i8* %22, align 1
  %151 = zext i8 %150 to i32
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %18, align 4
  %154 = load i8, i8* %22, align 1
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 2, %155
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %15, align 4
  br label %62

159:                                              ; preds = %114, %62
  br label %160

160:                                              ; preds = %159, %49, %42
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %25

163:                                              ; preds = %25
  %164 = load i32, i32* %15, align 4
  ret i32 %164
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
