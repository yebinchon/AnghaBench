; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_parseurl.c_RTMP_ParsePlaypath.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_parseurl.c_RTMP_ParsePlaypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"slist=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".f4v\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".flv\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mp4:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mp3:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTMP_ParsePlaypath(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* null, i8** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %200

32:                                               ; preds = %2
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 38)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %51, %41
  br label %59

59:                                               ; preds = %58, %37, %32
  %60 = load i8*, i8** %12, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 63)
  store i8* %61, i8** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = icmp sge i32 %62, 4
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -4
  store i8* %69, i8** %11, align 8
  br label %76

70:                                               ; preds = %64
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @strncmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %76
  store i32 1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %101

85:                                               ; preds = %80
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %7, align 4
  br label %100

94:                                               ; preds = %89, %85
  %95 = load i8*, i8** %11, align 8
  %96 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %94
  br label %100

100:                                              ; preds = %99, %93
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %59
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = call i64 @malloc(i32 %108)
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %200

114:                                              ; preds = %102
  %115 = load i8*, i8** %13, align 8
  store i8* %115, i8** %14, align 8
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load i8*, i8** %12, align 8
  %120 = call i64 @strncmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  store i8* %126, i8** %14, align 8
  br label %128

127:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %122
  br label %144

129:                                              ; preds = %114
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i8*, i8** %12, align 8
  %134 = call i64 @strncmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @strcpy(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  store i8* %140, i8** %14, align 8
  br label %142

141:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %141, %136
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143, %128
  %145 = load i8*, i8** %12, align 8
  store i8* %145, i8** %15, align 8
  br label %146

146:                                              ; preds = %186, %156, %144
  %147 = load i32, i32* %16, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %187

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load i8*, i8** %15, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = icmp eq i8* %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  store i8* %158, i8** %15, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sub nsw i32 %159, 4
  store i32 %160, i32* %16, align 4
  br label %146

161:                                              ; preds = %152, %149
  %162 = load i8*, i8** %15, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load i8*, i8** %15, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = call i32 @sscanf(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %17)
  %170 = load i32, i32* %17, align 4
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %14, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %14, align 8
  store i8 %171, i8* %172, align 1
  %174 = load i32, i32* %16, align 4
  %175 = sub nsw i32 %174, 3
  store i32 %175, i32* %16, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 3
  store i8* %177, i8** %15, align 8
  br label %186

178:                                              ; preds = %161
  %179 = load i8*, i8** %15, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %15, align 8
  %181 = load i8, i8* %179, align 1
  %182 = load i8*, i8** %14, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %14, align 8
  store i8 %181, i8* %182, align 1
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %178, %166
  br label %146

187:                                              ; preds = %146
  %188 = load i8*, i8** %14, align 8
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** %13, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %187, %113, %31
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
