; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_report_unmatched_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_report_unmatched_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i8*, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [8 x i8] c"\22%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" which is an index on \22%s.%s\22\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" which is an index on OID %u\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" which is the TOAST table for \22%s.%s\22\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c" which is the TOAST table for OID %u\00", align 1
@PG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [81 x i8] c"No match found in old cluster for new relation with OID %u in database \22%s\22: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"No match found in new cluster for old relation with OID %u in database \22%s\22: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)* @report_unmatched_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_unmatched_relation(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [1000 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %15, i32 1000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %19, i8* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %100

28:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %73, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %10, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %36
  %52 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %53 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %54 = call i32 @strlen(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %58 = call i32 @strlen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = sub i64 1000, %59
  %61 = trunc i64 %60 to i32
  %62 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %56, i32 %61, i8* %62, i64 %66, i8* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %4, align 8
  br label %76

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %29

76:                                               ; preds = %51, %29
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %77, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %85 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %90 = call i32 @strlen(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = sub i64 1000, %91
  %93 = trunc i64 %92 to i32
  %94 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %88, i32 %93, i8* %94, i64 %97)
  br label %99

99:                                               ; preds = %83, %76
  br label %100

100:                                              ; preds = %99, %3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %176

105:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %149, %105
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %152

113:                                              ; preds = %106
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %11, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %113
  %129 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %130 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %131 = call i32 @strlen(i8* %130)
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %135 = call i32 @strlen(i8* %134)
  %136 = sext i32 %135 to i64
  %137 = sub i64 1000, %136
  %138 = trunc i64 %137 to i32
  %139 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %133, i32 %138, i8* %139, i64 %143, i8* %146)
  br label %152

148:                                              ; preds = %113
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %106

152:                                              ; preds = %128, %106
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %153, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %152
  %160 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %161 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %162 = call i32 @strlen(i8* %161)
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %166 = call i32 @strlen(i8* %165)
  %167 = sext i32 %166 to i64
  %168 = sub i64 1000, %167
  %169 = trunc i64 %168 to i32
  %170 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %164, i32 %169, i8* %170, i64 %173)
  br label %175

175:                                              ; preds = %159, %152
  br label %176

176:                                              ; preds = %175, %100
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = load i32, i32* @PG_WARNING, align 4
  %181 = load i64, i64* %7, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %186 = call i32 @pg_log(i32 %180, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i64 %181, i32 %184, i8* %185)
  br label %195

187:                                              ; preds = %176
  %188 = load i32, i32* @PG_WARNING, align 4
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %194 = call i32 @pg_log(i32 %188, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i64 %189, i32 %192, i8* %193)
  br label %195

195:                                              ; preds = %187, %179
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @pg_log(i32, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
