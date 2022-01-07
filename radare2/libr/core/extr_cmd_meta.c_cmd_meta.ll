; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_cmd_meta.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_cmd_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@R_META_TYPE_ANY = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i32 0, align 4
@help_msg_C = common dso_local global i32 0, align 4
@R_ANAL_FCN_TYPE_FCN = common dso_local global i32 0, align 4
@R_ANAL_FCN_TYPE_SYM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot find function here\0A\00", align 1
@help_msg_CS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Usage: CSr [newname]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_meta(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %225 [
    i32 118, label %14
    i32 0, label %19
    i32 106, label %25
    i32 42, label %25
    i32 46, label %55
    i32 76, label %63
    i32 67, label %68
    i32 116, label %72
    i32 114, label %76
    i32 104, label %76
    i32 115, label %76
    i32 122, label %76
    i32 100, label %76
    i32 109, label %76
    i32 102, label %76
    i32 45, label %80
    i32 63, label %126
    i32 70, label %130
    i32 83, label %154
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @r_comment_vars(%struct.TYPE_14__* %15, i8* %17)
  br label %225

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load i32, i32* @R_META_TYPE_ANY, align 4
  %24 = call i32 @r_meta_list(%struct.TYPE_15__* %22, i32 %23, i8 signext 0)
  br label %225

25:                                               ; preds = %2, %2
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %46

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @r_meta_list_offset(%struct.TYPE_15__* %39, i32 %42, i8 signext %44)
  br label %54

46:                                               ; preds = %30
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load i32, i32* @R_META_TYPE_ANY, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @r_meta_list(%struct.TYPE_15__* %49, i32 %50, i8 signext %52)
  br label %54

54:                                               ; preds = %46, %36
  br label %225

55:                                               ; preds = %2
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @r_meta_list_offset(%struct.TYPE_15__* %58, i32 %61, i8 signext 0)
  br label %225

63:                                               ; preds = %2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i32 @cmd_meta_lineinfo(%struct.TYPE_14__* %64, i8* %66)
  br label %225

68:                                               ; preds = %2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @cmd_meta_comment(%struct.TYPE_14__* %69, i8* %70)
  br label %225

72:                                               ; preds = %2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @cmd_meta_vartype_comment(%struct.TYPE_14__* %73, i8* %74)
  br label %225

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @cmd_meta_others(%struct.TYPE_14__* %77, i8* %78)
  br label %225

80:                                               ; preds = %2
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 42
  br i1 %85, label %86, label %119

86:                                               ; preds = %80
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 32
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 2, i32 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %96, i64 %104
  %106 = call i32 @r_num_math(i32 %95, i8* %105)
  br label %108

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %92
  %109 = phi i32 [ %106, %92 ], [ 1, %107 ]
  store i32 %109, i32* %8, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = load i32, i32* @R_META_TYPE_ANY, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @r_meta_del(%struct.TYPE_15__* %112, i32 %113, i32 %116, i32 %117)
  br label %125

119:                                              ; preds = %80
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load i32, i32* @UT64_MAX, align 4
  %124 = call i32 @r_meta_cleanup(%struct.TYPE_15__* %122, i64 0, i32 %123)
  br label %125

125:                                              ; preds = %119, %108
  br label %225

126:                                              ; preds = %2
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = load i32, i32* @help_msg_C, align 4
  %129 = call i32 @r_core_cmd_help(%struct.TYPE_14__* %127, i32 %128)
  br label %225

130:                                              ; preds = %2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @R_ANAL_FCN_TYPE_FCN, align 4
  %138 = load i32, i32* @R_ANAL_FCN_TYPE_SYM, align 4
  %139 = or i32 %137, %138
  %140 = call i32* @r_anal_get_fcn_in(%struct.TYPE_15__* %133, i32 %136, i32 %139)
  store i32* %140, i32** %6, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %130
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  %150 = call i32 @r_anal_str_to_fcn(%struct.TYPE_15__* %146, i32* %147, i8* %149)
  br label %153

151:                                              ; preds = %130
  %152 = call i32 @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %143
  br label %225

154:                                              ; preds = %2
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  store i32* %158, i32** %7, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  switch i32 %162, label %221 [
    i32 63, label %163
    i32 43, label %167
    i32 114, label %172
    i32 45, label %186
    i32 106, label %210
    i32 0, label %210
    i32 42, label %210
    i32 32, label %216
  ]

163:                                              ; preds = %154
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %165 = load i32, i32* @help_msg_CS, align 4
  %166 = call i32 @r_core_cmd_help(%struct.TYPE_14__* %164, i32 %165)
  br label %224

167:                                              ; preds = %154
  %168 = load i32*, i32** %7, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  %171 = call i32 @r_spaces_push(i32* %168, i8* %170)
  br label %224

172:                                              ; preds = %154
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 32
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load i32*, i32** %7, align 8
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 2
  %182 = call i32 @r_spaces_rename(i32* %179, i32* null, i8* %181)
  br label %185

183:                                              ; preds = %172
  %184 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %178
  br label %224

186:                                              ; preds = %154
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %186
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 42
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @r_spaces_unset(i32* %198, i8* null)
  br label %205

200:                                              ; preds = %191
  %201 = load i32*, i32** %7, align 8
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = call i32 @r_spaces_unset(i32* %201, i8* %203)
  br label %205

205:                                              ; preds = %200, %197
  br label %209

206:                                              ; preds = %186
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @r_spaces_pop(i32* %207)
  br label %209

209:                                              ; preds = %206, %205
  br label %224

210:                                              ; preds = %154, %154, %154
  %211 = load i32*, i32** %7, align 8
  %212 = load i8*, i8** %4, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = call i32 @spaces_list(i32* %211, i8 signext %214)
  br label %224

216:                                              ; preds = %154
  %217 = load i32*, i32** %7, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  %220 = call i32 @r_spaces_set(i32* %217, i8* %219)
  br label %224

221:                                              ; preds = %154
  %222 = load i32*, i32** %7, align 8
  %223 = call i32 @spaces_list(i32* %222, i8 signext 0)
  br label %224

224:                                              ; preds = %221, %216, %210, %209, %185, %167, %163
  br label %225

225:                                              ; preds = %2, %224, %153, %126, %125, %76, %72, %68, %63, %55, %54, %19, %14
  ret i32 1
}

declare dso_local i32 @r_comment_vars(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @r_meta_list(%struct.TYPE_15__*, i32, i8 signext) #1

declare dso_local i32 @r_meta_list_offset(%struct.TYPE_15__*, i32, i8 signext) #1

declare dso_local i32 @cmd_meta_lineinfo(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @cmd_meta_comment(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @cmd_meta_vartype_comment(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @cmd_meta_others(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i32 @r_meta_del(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @r_meta_cleanup(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @r_anal_get_fcn_in(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @r_anal_str_to_fcn(%struct.TYPE_15__*, i32*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_spaces_push(i32*, i8*) #1

declare dso_local i32 @r_spaces_rename(i32*, i32*, i8*) #1

declare dso_local i32 @r_spaces_unset(i32*, i8*) #1

declare dso_local i32 @r_spaces_pop(i32*) #1

declare dso_local i32 @spaces_list(i32*, i8 signext) #1

declare dso_local i32 @r_spaces_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
