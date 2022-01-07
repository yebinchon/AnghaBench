; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_HTTP_read.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_rtmp.c_HTTP_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"HTTP/1.1 200 \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Content-\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"length:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @HTTP_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_read(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %119, %54, %24, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = call i32 @RTMPSockBuf_Fill(%struct.TYPE_7__* %13)
  br label %15

15:                                               ; preds = %11, %8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %8

25:                                               ; preds = %21
  store i32 -2, i32* %3, align 4
  br label %214

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %214

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i8* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %8

55:                                               ; preds = %51
  store i32 -2, i32* %3, align 4
  br label %214

56:                                               ; preds = %34
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 13
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %72, %56
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @strstr(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %64, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  %69 = call i32 @strncasecmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  store i8* %74, i8** %6, align 8
  br label %62

75:                                               ; preds = %71, %62
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %214

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 16
  %82 = call i32 @atoi(i8* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 16
  %85 = call i8* @strstr(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  store i32 -1, i32* %3, align 4
  br label %214

89:                                               ; preds = %79
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %91, i8** %6, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ 1, %98 ], [ %100, %99 ]
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %92, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %108, i64 %113
  %115 = icmp ugt i8* %104, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %101
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %8

120:                                              ; preds = %116
  store i32 -2, i32* %3, align 4
  br label %214

121:                                              ; preds = %101
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %122 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = sub nsw i64 %134, %129
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i8* %137, i8** %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %192, label %150

150:                                              ; preds = %121
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  %157 = call i8* @malloc(i32 %156)
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %150
  store i32 -1, i32* %3, align 4
  br label %214

167:                                              ; preds = %150
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 47, i8* %172, align 1
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8*, i8** %6, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %179, 1
  %181 = call i32 @memcpy(i8* %177, i8* %178, i32 %180)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  store i8 0, i8* %188, align 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  br label %213

192:                                              ; preds = %121
  %193 = load i8*, i8** %6, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %6, align 8
  %195 = load i8, i8* %193, align 1
  %196 = sext i8 %195 to i32
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %205, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %192, %167
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %166, %120, %88, %78, %55, %33, %25
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @RTMPSockBuf_Fill(%struct.TYPE_7__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
