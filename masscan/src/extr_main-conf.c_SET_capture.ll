; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_capture.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%scapture = cert\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%scapture = html\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%scapture = heartbleed\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%scapture = ticketbleed\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"heartbleed\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ticketbleed\00", align 1
@stderr = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"FAIL: %s: unknown capture type\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"nocapture\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"FAIL: %s: unknown nocapture type\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_capture(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %9 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %97

12:                                               ; preds = %3
  %13 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %14 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %19 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17, %12
  %23 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %24 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %27 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @fprintf(i64 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %35 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %40 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %33
  %44 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %45 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %48 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @fprintf(i64 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %43, %38
  %55 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %56 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %61 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59, %54
  %65 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %66 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %69 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @fprintf(i64 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %64, %59
  %76 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %77 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %82 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80, %75
  %86 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %87 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %90 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %95 = call i32 @fprintf(i64 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %85, %80
  store i32 0, i32* %4, align 4
  br label %182

97:                                               ; preds = %3
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @EQUALS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %138

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %107 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %137

108:                                              ; preds = %101
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %114 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %136

115:                                              ; preds = %108
  %116 = load i8*, i8** %7, align 8
  %117 = call i64 @EQUALS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %121 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  br label %135

122:                                              ; preds = %115
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @EQUALS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %128 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %127, i32 0, i32 3
  store i32 1, i32* %128, align 4
  br label %134

129:                                              ; preds = %122
  %130 = load i64, i64* @stderr, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @fprintf(i64 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @CONF_ERR, align 4
  store i32 %133, i32* %4, align 4
  br label %182

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %112
  br label %137

137:                                              ; preds = %136, %105
  br label %180

138:                                              ; preds = %97
  %139 = load i8*, i8** %6, align 8
  %140 = call i64 @EQUALS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %179

142:                                              ; preds = %138
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %148 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  br label %178

149:                                              ; preds = %142
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %155 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  br label %177

156:                                              ; preds = %149
  %157 = load i8*, i8** %7, align 8
  %158 = call i64 @EQUALS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %162 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %161, i32 0, i32 2
  store i32 0, i32* %162, align 8
  br label %176

163:                                              ; preds = %156
  %164 = load i8*, i8** %7, align 8
  %165 = call i64 @EQUALS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %169 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %168, i32 0, i32 3
  store i32 0, i32* %169, align 4
  br label %175

170:                                              ; preds = %163
  %171 = load i64, i64* @stderr, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @fprintf(i64 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* @CONF_ERR, align 4
  store i32 %174, i32* %4, align 4
  br label %182

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %160
  br label %177

177:                                              ; preds = %176, %153
  br label %178

178:                                              ; preds = %177, %146
  br label %179

179:                                              ; preds = %178, %138
  br label %180

180:                                              ; preds = %179, %137
  %181 = load i32, i32* @CONF_OK, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %170, %129, %96
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i64 @EQUALS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
