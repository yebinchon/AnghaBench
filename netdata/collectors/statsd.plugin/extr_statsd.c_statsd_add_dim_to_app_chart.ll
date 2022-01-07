; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_add_dim_to_app_chart.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_add_dim_to_app_chart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i8*, i64, %struct.TYPE_9__*, i32, i32, i32, i32, i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [9 x i8] c"%s_%s%zu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@RRDDIM_FLAG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @statsd_add_dim_to_app_chart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @statsd_add_dim_to_app_chart(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  br label %19

19:                                               ; preds = %67, %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 9
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %71

29:                                               ; preds = %27
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %40, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = icmp eq %struct.TYPE_7__* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %37, %29
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %8, align 8
  br label %19

71:                                               ; preds = %27
  %72 = load i64, i64* %9, align 8
  %73 = icmp ugt i64 %72, 1
  br i1 %73, label %74, label %148

74:                                               ; preds = %71
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = add nsw i32 %78, 100
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, 1
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %13, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %14, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp ugt i64 %85, 1
  br i1 %86, label %87, label %98

87:                                               ; preds = %74
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @valuetype2string(i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 (i8*, i64, i8*, i8*, i32, ...) @snprintfz(i8* %84, i64 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %91, i32 %95, i64 %96)
  br label %108

98:                                               ; preds = %74
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @valuetype2string(i64 %105)
  %107 = call i32 (i8*, i64, i8*, i8*, i32, ...) @snprintfz(i8* %84, i64 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %102, i32 %106)
  br label %108

108:                                              ; preds = %98, %87
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @rrddim_add(i32 %111, i8* %84, i32 %114, i32 %117, i32 %120, i32 %123)
  %125 = bitcast i8* %124 to %struct.TYPE_9__*
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RRDDIM_FLAG_NONE, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %108
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %136
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %133, %108
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %4, align 8
  %147 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %190

148:                                              ; preds = %71
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @rrddim_add(i32 %151, i8* %154, i32 %157, i32 %160, i32 %163, i32 %166)
  %168 = bitcast i8* %167 to %struct.TYPE_9__*
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @RRDDIM_FLAG_NONE, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %148
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %179
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %176, %148
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %4, align 8
  br label %190

190:                                              ; preds = %186, %143
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %191
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i64, i8*, i8*, i32, ...) #1

declare dso_local i32 @valuetype2string(i64) #1

declare dso_local i8* @rrddim_add(i32, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
