; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_param.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_bp.c_phpdbg_find_breakpoint_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i8*, i32, i64, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }

@ZEND_USER_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @phpdbg_find_breakpoint_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phpdbg_find_breakpoint_param(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca [2 x i64], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %239 [
    i32 130, label %20
    i32 128, label %20
    i32 132, label %91
    i32 129, label %128
    i32 131, label %128
    i32 133, label %229
  ]

20:                                               ; preds = %2, %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ZEND_USER_FUNCTION, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %241

27:                                               ; preds = %20
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = bitcast %struct.TYPE_14__* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %9, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @ZSTR_VAL(i8* %37)
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i8* [ %38, %34 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %39 ]
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @ZSTR_LEN(i8* %49)
  br label %54

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strlen(i8* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i64 [ %50, %46 ], [ %53, %51 ]
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memcmp(i8* %64, i8* %65, i64 %66)
  %68 = load i32, i32* @SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %61
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br label %87

87:                                               ; preds = %75, %70
  %88 = phi i1 [ true, %70 ], [ %86, %75 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %241

90:                                               ; preds = %61, %54
  br label %240

91:                                               ; preds = %2
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (...) @zend_get_executed_lineno()
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %127

98:                                               ; preds = %91
  %99 = call i8* (...) @zend_get_executed_filename()
  store i8* %99, i8** %10, align 8
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strlen(i8* %104)
  store i64 %105, i64* %100, align 8
  %106 = getelementptr inbounds i64, i64* %100, i64 1
  %107 = load i8*, i8** %10, align 8
  %108 = call i64 @strlen(i8* %107)
  store i64 %108, i64* %106, align 8
  %109 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %110 = load i64, i64* %109, align 16
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %98
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %121 = load i64, i64* %120, align 16
  %122 = call i32 @memcmp(i8* %118, i8* %119, i64 %121)
  %123 = load i32, i32* @SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %241

126:                                              ; preds = %98
  br label %127

127:                                              ; preds = %126, %91
  br label %240

128:                                              ; preds = %2, %2
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ZEND_USER_FUNCTION, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %241

135:                                              ; preds = %128
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = bitcast %struct.TYPE_14__* %136 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %12, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = icmp ne %struct.TYPE_11__* %140, null
  br i1 %141, label %142, label %228

142:                                              ; preds = %135
  %143 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strlen(i8* %147)
  store i64 %148, i64* %143, align 8
  %149 = getelementptr inbounds i64, i64* %143, i64 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @ZSTR_LEN(i8* %154)
  store i64 %155, i64* %149, align 8
  %156 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %157 = load i64, i64* %156, align 16
  %158 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %227

161:                                              ; preds = %142
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = call i32 @memcmp(i8* %165, i8* %170, i64 %172)
  %174 = load i32, i32* @SUCCESS, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %227

176:                                              ; preds = %161
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strlen(i8* %180)
  %182 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %181, i64* %182, align 16
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @ZSTR_LEN(i8* %185)
  %187 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %186, i64* %187, align 8
  %188 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %189 = load i64, i64* %188, align 16
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %176
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %202 = load i64, i64* %201, align 16
  %203 = call i32 @memcmp(i8* %197, i8* %200, i64 %202)
  %204 = load i32, i32* @SUCCESS, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %193
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 131
  br i1 %210, label %223, label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %214, %217
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  br label %223

223:                                              ; preds = %211, %206
  %224 = phi i1 [ true, %206 ], [ %222, %211 ]
  %225 = zext i1 %224 to i32
  store i32 %225, i32* %3, align 4
  br label %241

226:                                              ; preds = %193, %176
  br label %227

227:                                              ; preds = %226, %161, %142
  br label %228

228:                                              ; preds = %227, %135
  br label %240

229:                                              ; preds = %2
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %233, %236
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %3, align 4
  br label %241

239:                                              ; preds = %2
  br label %240

240:                                              ; preds = %239, %228, %127, %90
  store i32 0, i32* %3, align 4
  br label %241

241:                                              ; preds = %240, %229, %223, %134, %114, %87, %26
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i8* @ZSTR_VAL(i8*) #1

declare dso_local i64 @ZSTR_LEN(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @zend_get_executed_lineno(...) #1

declare dso_local i8* @zend_get_executed_filename(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
