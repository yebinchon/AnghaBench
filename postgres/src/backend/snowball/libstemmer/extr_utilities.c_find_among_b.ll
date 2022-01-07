; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_find_among_b.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_find_among_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32* }
%struct.among = type { i32, i32*, i32 (%struct.SN_env.0*)*, i32, i32 }
%struct.SN_env.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_among_b(%struct.SN_env* %0, %struct.among* %1, i32 %2) #0 {
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
  %35 = getelementptr inbounds i32, i32* %34, i64 -1
  store i32* %35, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %3, %124
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %40, 1
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %14, align 4
  br label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %15, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %19, align 4
  %52 = load %struct.among*, %struct.among** %6, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.among, %struct.among* %52, i64 %54
  store %struct.among* %55, %struct.among** %13, align 8
  %56 = load %struct.among*, %struct.among** %13, align 8
  %57 = getelementptr inbounds %struct.among, %struct.among* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %19, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %93, %50
  %63 = load i32, i32* %20, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %19, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %18, align 4
  br label %96

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sub nsw i32 0, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.among*, %struct.among** %13, align 8
  %80 = getelementptr inbounds %struct.among, %struct.among* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %78, %85
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %96

90:                                               ; preds = %72
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %20, align 4
  br label %62

96:                                               ; preds = %89, %71, %62
  %97 = load i32, i32* %18, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %19, align 4
  store i32 %101, i32* %15, align 4
  br label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %19, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %106, %107
  %109 = icmp sle i32 %108, 1
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %125

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %125

119:                                              ; preds = %114
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %125

123:                                              ; preds = %119
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %105
  br label %36

125:                                              ; preds = %122, %118, %113
  br label %126

126:                                              ; preds = %125, %180
  %127 = load %struct.among*, %struct.among** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.among, %struct.among* %127, i64 %129
  store %struct.among* %130, %struct.among** %13, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.among*, %struct.among** %13, align 8
  %133 = getelementptr inbounds %struct.among, %struct.among* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %173

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.among*, %struct.among** %13, align 8
  %139 = getelementptr inbounds %struct.among, %struct.among* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.among*, %struct.among** %13, align 8
  %145 = getelementptr inbounds %struct.among, %struct.among* %144, i32 0, i32 2
  %146 = load i32 (%struct.SN_env.0*)*, i32 (%struct.SN_env.0*)** %145, align 8
  %147 = icmp eq i32 (%struct.SN_env.0*)* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %136
  %149 = load %struct.among*, %struct.among** %13, align 8
  %150 = getelementptr inbounds %struct.among, %struct.among* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %4, align 4
  br label %181

152:                                              ; preds = %136
  %153 = load %struct.among*, %struct.among** %13, align 8
  %154 = getelementptr inbounds %struct.among, %struct.among* %153, i32 0, i32 2
  %155 = load i32 (%struct.SN_env.0*)*, i32 (%struct.SN_env.0*)** %154, align 8
  %156 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %157 = bitcast %struct.SN_env* %156 to %struct.SN_env.0*
  %158 = call i32 %155(%struct.SN_env.0* %157)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.among*, %struct.among** %13, align 8
  %161 = getelementptr inbounds %struct.among, %struct.among* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = load %struct.SN_env*, %struct.SN_env** %5, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %152
  %169 = load %struct.among*, %struct.among** %13, align 8
  %170 = getelementptr inbounds %struct.among, %struct.among* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %4, align 4
  br label %181

172:                                              ; preds = %152
  br label %173

173:                                              ; preds = %172, %126
  %174 = load %struct.among*, %struct.among** %13, align 8
  %175 = getelementptr inbounds %struct.among, %struct.among* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %181

180:                                              ; preds = %173
  br label %126

181:                                              ; preds = %179, %168, %148
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
