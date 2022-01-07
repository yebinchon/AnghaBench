; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_find_among.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_find_among.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32* }
%struct.among = type { i32, i32*, i32 (%struct.SN_env.0*)*, i32, i32 }
%struct.SN_env.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_among(%struct.SN_env* %0, %struct.among* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SN_env*, align 8
  %6 = alloca %struct.among*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.among*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %5, align 8
  store %struct.among* %1, %struct.among** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %3, %120
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = ashr i32 %39, 1
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %15, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %19, align 4
  %51 = load %struct.among*, %struct.among** %6, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.among, %struct.among* %51, i64 %53
  store %struct.among* %54, %struct.among** %13, align 8
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %20, align 4
  br label %56

56:                                               ; preds = %89, %49
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.among*, %struct.among** %13, align 8
  %59 = getelementptr inbounds %struct.among, %struct.among* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %18, align 4
  br label %92

69:                                               ; preds = %62
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.among*, %struct.among** %13, align 8
  %76 = getelementptr inbounds %struct.among, %struct.among* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %74, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %92

86:                                               ; preds = %69
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %20, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %20, align 4
  br label %56

92:                                               ; preds = %85, %68, %56
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %19, align 4
  store i32 %97, i32* %15, align 4
  br label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %102, %103
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %121

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %121

115:                                              ; preds = %110
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %121

119:                                              ; preds = %115
  store i32 1, i32* %16, align 4
  br label %120

120:                                              ; preds = %119, %101
  br label %35

121:                                              ; preds = %118, %114, %109
  br label %122

122:                                              ; preds = %121, %176
  %123 = load %struct.among*, %struct.among** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.among, %struct.among* %123, i64 %125
  store %struct.among* %126, %struct.among** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.among*, %struct.among** %13, align 8
  %129 = getelementptr inbounds %struct.among, %struct.among* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %127, %130
  br i1 %131, label %132, label %169

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.among*, %struct.among** %13, align 8
  %135 = getelementptr inbounds %struct.among, %struct.among* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %133, %136
  %138 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.among*, %struct.among** %13, align 8
  %141 = getelementptr inbounds %struct.among, %struct.among* %140, i32 0, i32 2
  %142 = load i32 (%struct.SN_env.0*)*, i32 (%struct.SN_env.0*)** %141, align 8
  %143 = icmp eq i32 (%struct.SN_env.0*)* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load %struct.among*, %struct.among** %13, align 8
  %146 = getelementptr inbounds %struct.among, %struct.among* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %4, align 4
  br label %177

148:                                              ; preds = %132
  %149 = load %struct.among*, %struct.among** %13, align 8
  %150 = getelementptr inbounds %struct.among, %struct.among* %149, i32 0, i32 2
  %151 = load i32 (%struct.SN_env.0*)*, i32 (%struct.SN_env.0*)** %150, align 8
  %152 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %153 = bitcast %struct.SN_env* %152 to %struct.SN_env.0*
  %154 = call i32 %151(%struct.SN_env.0* %153)
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.among*, %struct.among** %13, align 8
  %157 = getelementptr inbounds %struct.among, %struct.among* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %155, %158
  %160 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %148
  %165 = load %struct.among*, %struct.among** %13, align 8
  %166 = getelementptr inbounds %struct.among, %struct.among* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %4, align 4
  br label %177

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %168, %122
  %170 = load %struct.among*, %struct.among** %13, align 8
  %171 = getelementptr inbounds %struct.among, %struct.among* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %177

176:                                              ; preds = %169
  br label %122

177:                                              ; preds = %175, %164, %144
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
