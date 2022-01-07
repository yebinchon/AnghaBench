; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_find_coreGL.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_find_coreGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@GL_VERSION = common dso_local global i32 0, align 4
@GLVersion = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GLAD_GL_VERSION_1_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_2 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_3 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_4 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_5 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_2_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_2_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_2 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_3 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_4_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_4_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_4_2 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_4_3 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_4_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_coreGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_coreGL() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GL_VERSION, align 4
  %5 = call i64 @glGetString(i32 %4)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = sub nsw i32 %10, 48
  store i32 %11, i32* %2, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sub nsw i32 %15, 48
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @GLVersion, i32 0, i32 0), align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @GLVersion, i32 0, i32 1), align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %0
  %25 = load i32, i32* %2, align 4
  %26 = icmp sgt i32 %25, 1
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ true, %21 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* @GLAD_GL_VERSION_1_0, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = icmp sge i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 1
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ true, %32 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* @GLAD_GL_VERSION_1_1, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %2, align 4
  %48 = icmp sgt i32 %47, 1
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ true, %43 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @GLAD_GL_VERSION_1_2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = icmp sge i32 %55, 3
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %2, align 4
  %59 = icmp sgt i32 %58, 1
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ true, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* @GLAD_GL_VERSION_1_3, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = icmp sge i32 %66, 4
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %2, align 4
  %70 = icmp sgt i32 %69, 1
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* @GLAD_GL_VERSION_1_4, align 4
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = icmp sge i32 %77, 5
  br i1 %78, label %82, label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %2, align 4
  %81 = icmp sgt i32 %80, 1
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ true, %76 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* @GLAD_GL_VERSION_1_5, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %3, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %2, align 4
  %92 = icmp sgt i32 %91, 2
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i1 [ true, %87 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* @GLAD_GL_VERSION_2_0, align 4
  %96 = load i32, i32* %2, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = icmp sge i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %2, align 4
  %103 = icmp sgt i32 %102, 2
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ true, %98 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* @GLAD_GL_VERSION_2_1, align 4
  %107 = load i32, i32* %2, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %3, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %2, align 4
  %114 = icmp sgt i32 %113, 3
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i1 [ true, %109 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* @GLAD_GL_VERSION_3_0, align 4
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = icmp sge i32 %121, 1
  br i1 %122, label %126, label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %2, align 4
  %125 = icmp sgt i32 %124, 3
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i1 [ true, %120 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* @GLAD_GL_VERSION_3_1, align 4
  %129 = load i32, i32* %2, align 4
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %3, align 4
  %133 = icmp sge i32 %132, 2
  br i1 %133, label %137, label %134

134:                                              ; preds = %131, %126
  %135 = load i32, i32* %2, align 4
  %136 = icmp sgt i32 %135, 3
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i1 [ true, %131 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* @GLAD_GL_VERSION_3_2, align 4
  %140 = load i32, i32* %2, align 4
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %3, align 4
  %144 = icmp sge i32 %143, 3
  br i1 %144, label %148, label %145

145:                                              ; preds = %142, %137
  %146 = load i32, i32* %2, align 4
  %147 = icmp sgt i32 %146, 3
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi i1 [ true, %142 ], [ %147, %145 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* @GLAD_GL_VERSION_3_3, align 4
  %151 = load i32, i32* %2, align 4
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %3, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %2, align 4
  %158 = icmp sgt i32 %157, 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi i1 [ true, %153 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* @GLAD_GL_VERSION_4_0, align 4
  %162 = load i32, i32* %2, align 4
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %3, align 4
  %166 = icmp sge i32 %165, 1
  br i1 %166, label %170, label %167

167:                                              ; preds = %164, %159
  %168 = load i32, i32* %2, align 4
  %169 = icmp sgt i32 %168, 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi i1 [ true, %164 ], [ %169, %167 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* @GLAD_GL_VERSION_4_1, align 4
  %173 = load i32, i32* %2, align 4
  %174 = icmp eq i32 %173, 4
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* %3, align 4
  %177 = icmp sge i32 %176, 2
  br i1 %177, label %181, label %178

178:                                              ; preds = %175, %170
  %179 = load i32, i32* %2, align 4
  %180 = icmp sgt i32 %179, 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i1 [ true, %175 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* @GLAD_GL_VERSION_4_2, align 4
  %184 = load i32, i32* %2, align 4
  %185 = icmp eq i32 %184, 4
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %3, align 4
  %188 = icmp sge i32 %187, 3
  br i1 %188, label %192, label %189

189:                                              ; preds = %186, %181
  %190 = load i32, i32* %2, align 4
  %191 = icmp sgt i32 %190, 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi i1 [ true, %186 ], [ %191, %189 ]
  %194 = zext i1 %193 to i32
  store i32 %194, i32* @GLAD_GL_VERSION_4_3, align 4
  %195 = load i32, i32* %2, align 4
  %196 = icmp eq i32 %195, 4
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %3, align 4
  %199 = icmp sge i32 %198, 4
  br i1 %199, label %203, label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %2, align 4
  %202 = icmp sgt i32 %201, 4
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i1 [ true, %197 ], [ %202, %200 ]
  %205 = zext i1 %204 to i32
  store i32 %205, i32* @GLAD_GL_VERSION_4_4, align 4
  ret void
}

declare dso_local i64 @glGetString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
