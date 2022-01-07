; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_controldata.c_check_control_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_controldata.c_check_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [124 x i8] c"old and new pg_controldata alignments are invalid or do not match\0ALikely one cluster is a 32-bit install, the other 64-bit\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"old and new pg_controldata block sizes are invalid or do not match\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"old and new pg_controldata maximum relation segment sizes are invalid or do not match\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"old and new pg_controldata WAL block sizes are invalid or do not match\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"old and new pg_controldata WAL segment sizes are invalid or do not match\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"old and new pg_controldata maximum identifier lengths are invalid or do not match\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"old and new pg_controldata maximum indexed columns are invalid or do not match\0A\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"old and new pg_controldata maximum TOAST chunk sizes are invalid or do not match\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"old and new pg_controldata large-object chunk sizes are invalid or do not match\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"old and new pg_controldata date/time storage types do not match\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"old cluster does not use data checksums but the new one does\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"old cluster uses data checksums but the new one does not\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"old and new cluster pg_controldata checksum versions do not match\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_control_data(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9, %2
  %18 = call i32 @pg_fatal(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24, %19
  %33 = call i32 @pg_fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %34
  %48 = call i32 @pg_fatal(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54, %49
  %63 = call i32 @pg_fatal(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %54
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69, %64
  %78 = call i32 @pg_fatal(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %69
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84, %79
  %93 = call i32 @pg_fatal(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99, %94
  %108 = call i32 @pg_fatal(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %99
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114, %109
  %123 = call i32 @pg_fatal(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %114
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = call i32 @pg_fatal(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %129, %124
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = call i32 @pg_fatal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %139
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 10
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = call i32 @pg_fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  br label %185

161:                                              ; preds = %154, %149
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 10
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 10
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 @pg_fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  br label %184

173:                                              ; preds = %166, %161
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 10
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 10
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %176, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = call i32 @pg_fatal(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %173
  br label %184

184:                                              ; preds = %183, %171
  br label %185

185:                                              ; preds = %184, %159
  ret void
}

declare dso_local i32 @pg_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
