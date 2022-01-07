; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__getObjectDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__getObjectDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MATERIALIZED VIEW\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"COLLATION\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"CONVERSION\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"FOREIGN TABLE\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"TEXT SEARCH DICTIONARY\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"TEXT SEARCH CONFIGURATION\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"STATISTICS\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"DATABASE\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"PROCEDURAL LANGUAGE\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SCHEMA\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"EVENT TRIGGER\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"FOREIGN DATA WRAPPER\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"PUBLICATION\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SUBSCRIPTION\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"USER MAPPING\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"BLOB\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"LARGE OBJECT %s\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"AGGREGATE\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"FUNCTION\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"OPERATOR\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"OPERATOR CLASS\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"OPERATOR FAMILY\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"PROCEDURE\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"don't know how to set owner for object type \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32*)* @_getObjectDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_getObjectDescription(i32 %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %97, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %97, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %97, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %97, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %97, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %97, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %97, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %97, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %97, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25
  %98 = load i32, i32* %4, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @appendPQExpBuffer(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %97
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @fmtId(i8* %116)
  %118 = call i32 @appendPQExpBuffer(i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %112, %105, %97
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @fmtId(i8* %123)
  %125 = call i32 @appendPQExpBufferStr(i32 %120, i8* %124)
  br label %204

126:                                              ; preds = %93
  %127 = load i8*, i8** %7, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @appendPQExpBuffer(i32 %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* %134)
  br label %204

136:                                              ; preds = %126
  %137 = load i8*, i8** %7, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %136
  %141 = load i8*, i8** %7, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %7, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %7, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i8*, i8** %7, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %201

160:                                              ; preds = %156, %152, %148, %144, %140, %136
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 5
  %165 = call i8* @pg_strdup(i64 %164)
  store i8* %165, i8** %8, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @strlen(i8* %167)
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  store i8* %171, i8** %9, align 8
  br label %172

172:                                              ; preds = %190, %160
  %173 = load i8*, i8** %9, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = icmp uge i8* %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load i8*, i8** %9, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 10
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 59
  br label %186

186:                                              ; preds = %181, %176
  %187 = phi i1 [ true, %176 ], [ %185, %181 ]
  br label %188

188:                                              ; preds = %186, %172
  %189 = phi i1 [ false, %172 ], [ %187, %186 ]
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 -1
  store i8* %192, i8** %9, align 8
  br label %172

193:                                              ; preds = %188
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 0, i8* %195, align 1
  %196 = load i32, i32* %4, align 4
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @appendPQExpBufferStr(i32 %196, i8* %197)
  %199 = load i8*, i8** %8, align 8
  %200 = call i32 @free(i8* %199)
  br label %204

201:                                              ; preds = %156
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @pg_log_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %201, %193, %130, %119
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

declare dso_local i8* @pg_strdup(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
