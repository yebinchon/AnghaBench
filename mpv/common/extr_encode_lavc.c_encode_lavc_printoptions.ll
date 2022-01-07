; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_printoptions.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_printoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s=<flags>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s=<int>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s=<int64>\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s=<double>\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s=<float>\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s=<string>\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s=<rational>\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s=<binary>\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"  [+-]%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%-32s \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, i8*, i8*, i8*, i8*, i32, i32)* @encode_lavc_printoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_lavc_printoptions(%struct.mp_log* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca [32 x i8], align 16
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  br label %17

17:                                               ; preds = %191, %70, %54, %45, %35, %7
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %20 = call %struct.TYPE_4__* @av_opt_next(i8* %18, %struct.TYPE_4__* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %15, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %192

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %17

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 135
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %17

46:                                               ; preds = %40, %37
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 135
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %17

55:                                               ; preds = %49, %46
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 135
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %64, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %17

71:                                               ; preds = %63, %58, %55
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 135
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %87

83:                                               ; preds = %74, %71
  %84 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %148 [
    i32 133, label %94
    i32 131, label %100
    i32 130, label %106
    i32 134, label %112
    i32 132, label %118
    i32 128, label %124
    i32 129, label %130
    i32 136, label %136
    i32 135, label %142
  ]

94:                                               ; preds = %90
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @snprintf(i8* %95, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %154

100:                                              ; preds = %90
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @snprintf(i8* %101, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  br label %154

106:                                              ; preds = %90
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @snprintf(i8* %107, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  br label %154

112:                                              ; preds = %90
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @snprintf(i8* %113, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  br label %154

118:                                              ; preds = %90
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @snprintf(i8* %119, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %154

124:                                              ; preds = %90
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @snprintf(i8* %125, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %128)
  br label %154

130:                                              ; preds = %90
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @snprintf(i8* %131, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %134)
  br label %154

136:                                              ; preds = %90
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @snprintf(i8* %137, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %140)
  br label %154

142:                                              ; preds = %90
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @snprintf(i8* %143, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %146)
  br label %154

148:                                              ; preds = %90
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @snprintf(i8* %149, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %148, %142, %136, %130, %124, %118, %112, %106, %100, %94
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 31
  store i8 0, i8* %155, align 1
  %156 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %157 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %158 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %157)
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %154
  %164 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %154
  %170 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %171 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %169
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 135
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  call void @encode_lavc_printoptions(%struct.mp_log* %182, i8* %183, i8* %184, i8* %185, i8* %188, i32 %189, i32 %190)
  br label %191

191:                                              ; preds = %181, %176, %169
  br label %17

192:                                              ; preds = %17
  ret void
}

declare dso_local %struct.TYPE_4__* @av_opt_next(i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
