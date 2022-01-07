; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_vacuumdb.c_prepare_vacuum_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_vacuumdb.c_prepare_vacuum_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ANALYZE\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%sSKIP_LOCKED\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%sVERBOSE\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" VERBOSE\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"VACUUM\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%sDISABLE_PAGE_SKIPPING\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%sFULL\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%sFREEZE\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%sANALYZE\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" FULL\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" FREEZE\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" ANALYZE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %s;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_3__*, i8*)* @prepare_vacuum_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vacuum_command(i32 %0, i32 %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @resetPQExpBuffer(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @appendPQExpBufferStr(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 110000
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 120000
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @appendPQExpBuffer(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @appendPQExpBuffer(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @appendPQExpBufferChar(i32 %53, i8 signext 41)
  br label %55

55:                                               ; preds = %52, %48
  br label %65

56:                                               ; preds = %19
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @appendPQExpBufferStr(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %55
  br label %181

66:                                               ; preds = %4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @appendPQExpBufferStr(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %69, 90000
  br i1 %70, label %71, label %147

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 90600
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @appendPQExpBuffer(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %10, align 8
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = icmp sge i32 %91, 120000
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @appendPQExpBuffer(i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %10, align 8
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %90, %85
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @appendPQExpBuffer(i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %10, align 8
  store i8* %108, i8** %11, align 8
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @appendPQExpBuffer(i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** %10, align 8
  store i8* %118, i8** %11, align 8
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @appendPQExpBuffer(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %126)
  %128 = load i8*, i8** %10, align 8
  store i8* %128, i8** %11, align 8
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @appendPQExpBuffer(i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %136)
  %138 = load i8*, i8** %10, align 8
  store i8* %138, i8** %11, align 8
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i8*, i8** %11, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = icmp ne i8* %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @appendPQExpBufferChar(i32 %144, i8 signext 41)
  br label %146

146:                                              ; preds = %143, %139
  br label %180

147:                                              ; preds = %66
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @appendPQExpBufferStr(i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @appendPQExpBufferStr(i32 %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @appendPQExpBufferStr(i32 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @appendPQExpBufferStr(i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %171
  br label %180

180:                                              ; preds = %179, %146
  br label %181

181:                                              ; preds = %180, %65
  %182 = load i32, i32* %5, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @appendPQExpBuffer(i32 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %183)
  ret void
}

declare dso_local i32 @resetPQExpBuffer(i32) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
