; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_ff_avc_find_startcode_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_ff_avc_find_startcode_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @ff_avc_find_startcode_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ff_avc_find_startcode_internal(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32*, i32** %4, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = and i64 %11, 3
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 -3
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %45, %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ult i32* %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %48

27:                                               ; preds = %25
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  store i32* %43, i32** %3, align 8
  br label %164

44:                                               ; preds = %37, %32, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %4, align 8
  br label %17

48:                                               ; preds = %25
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -3
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %130, %48
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %133

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 16843009
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = and i32 %62, -2139062144
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %55
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  store i32* %81, i32** %3, align 8
  br label %164

82:                                               ; preds = %75, %70
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32* %94, i32** %3, align 8
  br label %164

95:                                               ; preds = %87, %82
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32* %113, i32** %3, align 8
  br label %164

114:                                              ; preds = %106, %101
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  store i32* %126, i32** %3, align 8
  br label %164

127:                                              ; preds = %119, %114
  br label %128

128:                                              ; preds = %127, %96
  br label %129

129:                                              ; preds = %128, %55
  br label %130

130:                                              ; preds = %129
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %4, align 8
  br label %51

133:                                              ; preds = %51
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  store i32* %135, i32** %5, align 8
  br label %136

136:                                              ; preds = %158, %133
  %137 = load i32*, i32** %4, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = icmp ult i32* %137, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %136
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32*, i32** %4, align 8
  store i32* %156, i32** %3, align 8
  br label %164

157:                                              ; preds = %150, %145, %140
  br label %158

158:                                              ; preds = %157
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %4, align 8
  br label %136

161:                                              ; preds = %136
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  store i32* %163, i32** %3, align 8
  br label %164

164:                                              ; preds = %161, %155, %124, %111, %92, %80, %42
  %165 = load i32*, i32** %3, align 8
  ret i32* %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
