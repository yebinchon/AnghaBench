; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_json.c_json_parse.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_json.c_json_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i64, double }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@MPV_FORMAT_NONE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@MPV_FORMAT_FLAG = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@errno = common dso_local global i64 0, align 8
@MPV_FORMAT_INT64 = common dso_local global i8* null, align 8
@MPV_FORMAT_DOUBLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_parse(i8* %0, %struct.mpv_node* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.mpv_node* %1, %struct.mpv_node** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %180

20:                                               ; preds = %4
  %21 = load i8**, i8*** %8, align 8
  %22 = call i32 @eat_ws(i8** %21)
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %10, align 1
  %26 = load i8, i8* %10, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %180

29:                                               ; preds = %20
  %30 = load i8, i8* %10, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 110
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %39, align 8
  %42 = load i8*, i8** @MPV_FORMAT_NONE, align 8
  %43 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %44 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %5, align 4
  br label %180

45:                                               ; preds = %33, %29
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 116
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8**, i8*** %8, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %57, i8** %55, align 8
  %58 = load i8*, i8** @MPV_FORMAT_FLAG, align 8
  %59 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %60 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %62 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i32 0, i32* %5, align 4
  br label %180

64:                                               ; preds = %49, %45
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 102
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load i8**, i8*** %8, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  store i8* %76, i8** %74, align 8
  %77 = load i8*, i8** @MPV_FORMAT_FLAG, align 8
  %78 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %79 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %81 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  store i32 0, i32* %5, align 4
  br label %180

83:                                               ; preds = %68, %64
  %84 = load i8, i8* %10, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 34
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %90 = load i8**, i8*** %8, align 8
  %91 = call i32 @read_str(i8* %88, %struct.mpv_node* %89, i8** %90)
  store i32 %91, i32* %5, align 4
  br label %180

92:                                               ; preds = %83
  %93 = load i8, i8* %10, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 91
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8, i8* %10, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 123
  br i1 %99, label %100, label %106

100:                                              ; preds = %96, %92
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %103 = load i8**, i8*** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @read_sub(i8* %101, %struct.mpv_node* %102, i8** %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %180

106:                                              ; preds = %96
  %107 = load i8, i8* %10, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 45
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i8, i8* %10, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sge i32 %112, 48
  br i1 %113, label %114, label %174

114:                                              ; preds = %110
  %115 = load i8, i8* %10, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %116, 57
  br i1 %117, label %118, label %174

118:                                              ; preds = %114, %106
  %119 = load i8**, i8*** %8, align 8
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %11, align 8
  %121 = load i8**, i8*** %8, align 8
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %12, align 8
  store i64 0, i64* @errno, align 8
  %123 = load i8**, i8*** %8, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strtoll(i8* %124, i8** %11, i32 0)
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* @errno, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i8**, i8*** %8, align 8
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %11, align 8
  br label %131

131:                                              ; preds = %128, %118
  store i64 0, i64* @errno, align 8
  %132 = load i8**, i8*** %8, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call double @strtod(i8* %133, i8** %12)
  store double %134, double* %14, align 8
  %135 = load i64, i64* @errno, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8**, i8*** %8, align 8
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i8*, i8** %11, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = icmp uge i8* %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i8*, i8** %11, align 8
  %146 = load i8**, i8*** %8, align 8
  store i8* %145, i8** %146, align 8
  %147 = load i8*, i8** @MPV_FORMAT_INT64, align 8
  %148 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %149 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %152 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i64 %150, i64* %153, align 8
  store i32 0, i32* %5, align 4
  br label %180

154:                                              ; preds = %140
  %155 = load i8*, i8** %12, align 8
  %156 = load i8**, i8*** %8, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ugt i8* %155, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load double, double* %14, align 8
  %161 = call i64 @isfinite(double %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load i8*, i8** %12, align 8
  %165 = load i8**, i8*** %8, align 8
  store i8* %164, i8** %165, align 8
  %166 = load i8*, i8** @MPV_FORMAT_DOUBLE, align 8
  %167 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %168 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load double, double* %14, align 8
  %170 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %171 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store double %169, double* %172, align 8
  store i32 0, i32* %5, align 4
  br label %180

173:                                              ; preds = %159, %154
  store i32 -1, i32* %5, align 4
  br label %180

174:                                              ; preds = %114, %110
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  store i32 -1, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %173, %163, %144, %100, %87, %73, %54, %38, %28, %19
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @eat_ws(i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @read_str(i8*, %struct.mpv_node*, i8**) #1

declare dso_local i32 @read_sub(i8*, %struct.mpv_node*, i8**, i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @isfinite(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
