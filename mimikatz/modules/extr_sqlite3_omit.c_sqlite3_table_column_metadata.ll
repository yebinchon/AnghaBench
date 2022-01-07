; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_table_column_metadata.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_table_column_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i8*, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@TF_Autoincrement = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@sqlite3StrBINARY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"no such table column: %s.%s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_table_column_metadata(%struct.TYPE_17__* %0, i8* %1, i8* %2, i8* %3, i8** %4, i8** %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i8* null, i8** %20, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %22, align 8
  store i32 0, i32* %23, align 4
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sqlite3_mutex_enter(i32 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_17__* %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = call i32 @sqlite3Init(%struct.TYPE_17__* %35, i8** %20)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %9
  br label %159

41:                                               ; preds = %9
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call %struct.TYPE_18__* @sqlite3FindTable(%struct.TYPE_17__* %42, i8* %43, i8* %44)
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %21, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %47 = icmp ne %struct.TYPE_18__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %41
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %21, align 8
  br label %159

54:                                               ; preds = %48
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %116

58:                                               ; preds = %54
  store i32 0, i32* %23, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %23, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = load i32, i32* %23, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i64 %70
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %22, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = call i64 @sqlite3StrICmp(i32 %74, i8* %75)
  %77 = icmp eq i64 0, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %83

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %23, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %23, align 4
  br label %59

83:                                               ; preds = %78, %59
  %84 = load i32, i32* %23, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %91 = call i64 @HasRowid(%struct.TYPE_18__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load i8*, i8** %13, align 8
  %95 = call i64 @sqlite3IsRowid(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %23, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i64 %108
  br label %111

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %103
  %112 = phi %struct.TYPE_19__* [ %109, %103 ], [ null, %110 ]
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %22, align 8
  br label %114

113:                                              ; preds = %93, %89
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %21, align 8
  br label %159

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %83
  br label %116

116:                                              ; preds = %115, %57
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %118 = icmp ne %struct.TYPE_19__* %117, null
  br i1 %118, label %119, label %152

119:                                              ; preds = %116
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %121 = call i8* @sqlite3ColumnType(%struct.TYPE_19__* %120, i32 0)
  store i8* %121, i8** %24, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %25, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %26, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %27, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %23, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %119
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TF_Autoincrement, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %142, %119
  %150 = phi i1 [ false, %119 ], [ %148, %142 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %28, align 4
  br label %153

152:                                              ; preds = %116
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  store i32 1, i32* %27, align 4
  br label %153

153:                                              ; preds = %152, %149
  %154 = load i8*, i8** %25, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** @sqlite3StrBINARY, align 8
  store i8* %157, i8** %25, align 8
  br label %158

158:                                              ; preds = %156, %153
  br label %159

159:                                              ; preds = %158, %113, %53, %40
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_17__* %160)
  %162 = load i8**, i8*** %14, align 8
  %163 = icmp ne i8** %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i8*, i8** %24, align 8
  %166 = load i8**, i8*** %14, align 8
  store i8* %165, i8** %166, align 8
  br label %167

167:                                              ; preds = %164, %159
  %168 = load i8**, i8*** %15, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i8*, i8** %25, align 8
  %172 = load i8**, i8*** %15, align 8
  store i8* %171, i8** %172, align 8
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %16, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %26, align 4
  %178 = load i32*, i32** %16, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32*, i32** %17, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %27, align 4
  %184 = load i32*, i32** %17, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i32*, i32** %18, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* %28, align 4
  %190 = load i32*, i32** %18, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* @SQLITE_OK, align 4
  %193 = load i32, i32* %19, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %197 = icmp ne %struct.TYPE_18__* %196, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = load i8*, i8** %20, align 8
  %201 = call i32 @sqlite3DbFree(%struct.TYPE_17__* %199, i8* %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = call i8* @sqlite3MPrintf(%struct.TYPE_17__* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %203, i8* %204)
  store i8* %205, i8** %20, align 8
  %206 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %206, i32* %19, align 4
  br label %207

207:                                              ; preds = %198, %195, %191
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = load i32, i32* %19, align 4
  %210 = load i8*, i8** %20, align 8
  %211 = icmp ne i8* %210, null
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* null
  %214 = load i8*, i8** %20, align 8
  %215 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_17__* %208, i32 %209, i8* %213, i8* %214)
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %217 = load i8*, i8** %20, align 8
  %218 = call i32 @sqlite3DbFree(%struct.TYPE_17__* %216, i8* %217)
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @sqlite3ApiExit(%struct.TYPE_17__* %219, i32 %220)
  store i32 %221, i32* %19, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @sqlite3_mutex_leave(i32 %224)
  %226 = load i32, i32* %19, align 4
  ret i32 %226
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3Init(%struct.TYPE_17__*, i8**) #1

declare dso_local %struct.TYPE_18__* @sqlite3FindTable(%struct.TYPE_17__*, i8*, i8*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i64 @HasRowid(%struct.TYPE_18__*) #1

declare dso_local i64 @sqlite3IsRowid(i8*) #1

declare dso_local i8* @sqlite3ColumnType(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_17__*, i8*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_17__*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_17__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
