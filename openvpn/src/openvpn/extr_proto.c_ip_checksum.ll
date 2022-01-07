; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proto.c_ip_checksum.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proto.c_ip_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_checksum(i64 %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 4, i32 16
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %56, %6
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = and i32 %33, 65280
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  br label %48

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi i32 [ %46, %39 ], [ 0, %47 ]
  %50 = add nsw i32 %34, %49
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %15, align 4
  br label %23

59:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = and i32 %70, 65280
  %72 = sext i32 %71 to i64
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %72, %80
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %16, align 4
  br label %60

89:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = and i32 %100, 65280
  %102 = sext i32 %101 to i64
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 255
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %102, %110
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %94
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %17, align 4
  br label %90

119:                                              ; preds = %90
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %136, %119
  %133 = load i32, i32* %13, align 4
  %134 = ashr i32 %133, 16
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = and i32 %137, 65535
  %139 = load i32, i32* %13, align 4
  %140 = ashr i32 %139, 16
  %141 = add nsw i32 %138, %140
  store i32 %141, i32* %13, align 4
  br label %132

142:                                              ; preds = %132
  %143 = load i32, i32* %13, align 4
  %144 = xor i32 %143, -1
  %145 = sext i32 %144 to i64
  ret i64 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
