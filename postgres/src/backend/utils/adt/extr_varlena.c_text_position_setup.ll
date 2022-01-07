; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_position_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_position_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32, i32, i32, i32*, i64, i8*, i8*, i32* }
%struct.TYPE_5__ = type { i32 }

@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"nondeterministic collations are not supported for substring searches\00", align 1
@PG_UTF8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, %struct.TYPE_6__*)* @text_position_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @text_position_setup(i32* %0, i32* %1, i64 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @VARSIZE_ANY_EXHDR(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @VARSIZE_ANY_EXHDR(i32* %19)
  store i32 %20, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @check_collation_set(i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @lc_collate_is_c(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.TYPE_5__* @pg_newlocale_from_collation(i64 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %11, align 8
  br label %33

33:                                               ; preds = %30, %26, %4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %36, %33
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = call i32 (...) @pg_database_encoding_max_length()
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %78

63:                                               ; preds = %47
  %64 = call i64 (...) @GetDatabaseEncoding()
  %65 = load i64, i64* @PG_UTF8, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %77

72:                                               ; preds = %63
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @VARDATA_ANY(i32* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i8* @VARDATA_ANY(i32* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 10
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 8
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 9
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %191

105:                                              ; preds = %78
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %191

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %12, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %16, align 8
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 16
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 3, i32* %13, align 4
  br label %144

118:                                              ; preds = %108
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 64
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 7, i32* %13, align 4
  br label %143

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 128
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 15, i32* %13, align 4
  br label %142

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 512
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 31, i32* %13, align 4
  br label %141

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 2048
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 63, i32* %13, align 4
  br label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 4096
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 127, i32* %13, align 4
  br label %139

138:                                              ; preds = %134
  store i32 255, i32* %13, align 4
  br label %139

139:                                              ; preds = %138, %137
  br label %140

140:                                              ; preds = %139, %133
  br label %141

141:                                              ; preds = %140, %129
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142, %121
  br label %144

144:                                              ; preds = %143, %117
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %160, %144
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  br label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %148

163:                                              ; preds = %148
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %166

166:                                              ; preds = %187, %163
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = load i8*, i8** %16, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = load i32, i32* %13, align 4
  %184 = and i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %176, i64 %185
  store i32 %173, i32* %186, align 4
  br label %187

187:                                              ; preds = %170
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %166

190:                                              ; preds = %166
  br label %191

191:                                              ; preds = %190, %105, %78
  ret void
}

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @check_collation_set(i64) #1

declare dso_local i32 @lc_collate_is_c(i64) #1

declare dso_local %struct.TYPE_5__* @pg_newlocale_from_collation(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
