; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_dfmgr.c_incompatible_module_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_dfmgr.c_incompatible_module_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i32 }

@magic_data = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"incompatible library \22%s\22: version mismatch\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Server is version %d, library is version %s.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Server has FUNC_MAX_ARGS = %d, library has %d.\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Server has INDEX_MAX_KEYS = %d, library has %d.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Server has NAMEDATALEN = %d, library has %d.\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Server has FLOAT4PASSBYVAL = %s, library has %s.\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Server has FLOAT8PASSBYVAL = %s, library has %s.\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Magic block has unexpected length or padding difference.\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"incompatible library \22%s\22: magic block mismatch\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_10__*)* @incompatible_module_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incompatible_module_error(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 1000
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 100
  %23 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %18, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %35

24:                                               ; preds = %12
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 100
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %32, 100
  %34 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %25, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %24, %17
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 0), align 8
  %40 = sdiv i32 %39, 100
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %42 = call i32 @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %40, i8* %41)
  %43 = call i32 @ereport(i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %35, %2
  %45 = call i32 @initStringInfo(%struct.TYPE_9__* %5)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 1), align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %5, i8 signext 10)
  br label %57

57:                                               ; preds = %55, %51
  %58 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 1), align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @appendStringInfo(%struct.TYPE_9__* %5, i32 %58, i8* %60, i8* %64)
  br label %66

66:                                               ; preds = %57, %44
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 2), align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %5, i8 signext 10)
  br label %78

78:                                               ; preds = %76, %72
  %79 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 2), align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @appendStringInfo(%struct.TYPE_9__* %5, i32 %79, i8* %81, i8* %85)
  br label %87

87:                                               ; preds = %78, %66
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 3), align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %5, i8 signext 10)
  br label %99

99:                                               ; preds = %97, %93
  %100 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 3), align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @appendStringInfo(%struct.TYPE_9__* %5, i32 %100, i8* %102, i8* %106)
  br label %108

108:                                              ; preds = %99, %87
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 4), align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %5, i8 signext 10)
  br label %120

120:                                              ; preds = %118, %114
  %121 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 4), align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %132 = call i32 @appendStringInfo(%struct.TYPE_9__* %5, i32 %121, i8* %125, i8* %131)
  br label %133

133:                                              ; preds = %120, %108
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 5), align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 @appendStringInfoChar(%struct.TYPE_9__* %5, i8 signext 10)
  br label %145

145:                                              ; preds = %143, %139
  %146 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @magic_data, i32 0, i32 5), align 8
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %157 = call i32 @appendStringInfo(%struct.TYPE_9__* %5, i32 %146, i8* %150, i8* %156)
  br label %158

158:                                              ; preds = %145, %133
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  %164 = call i32 @appendStringInfoString(%struct.TYPE_9__* %5, i32 %163)
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* @ERROR, align 4
  %167 = load i8*, i8** %3, align 8
  %168 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %170)
  %172 = call i32 @ereport(i32 %166, i32 %171)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i8*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_9__*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
