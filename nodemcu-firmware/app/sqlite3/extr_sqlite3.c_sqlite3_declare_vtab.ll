; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_declare_vtab.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_declare_vtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_32__*, i64, i64, i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_30__*, i64, %struct.TYPE_28__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@TF_WithoutRowid = common dso_local global i32 0, align 4
@TF_NoVisibleRowid = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_declare_vtab(%struct.TYPE_28__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_29__* %20, %struct.TYPE_29__** %6, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %22 = icmp ne %struct.TYPE_29__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %30 = load i32, i32* @SQLITE_MISUSE, align 4
  %31 = call i32 @sqlite3Error(%struct.TYPE_28__* %29, i32 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sqlite3_mutex_leave(i32 %34)
  %36 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %36, i32* %3, align 4
  br label %218

37:                                               ; preds = %23
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %39, align 8
  store %struct.TYPE_30__* %40, %struct.TYPE_30__** %9, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %42 = call i32 @IsVirtual(%struct.TYPE_30__* %41)
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %45 = call %struct.TYPE_31__* @sqlite3StackAllocZero(%struct.TYPE_28__* %44, i32 32)
  store %struct.TYPE_31__* %45, %struct.TYPE_31__** %7, align 8
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %47 = icmp eq %struct.TYPE_31__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %49, i32* %8, align 4
  br label %203

50:                                               ; preds = %37
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 4
  store %struct.TYPE_28__* %53, %struct.TYPE_28__** %55, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @sqlite3RunParser(%struct.TYPE_31__* %59, i8* %60, i8** %10)
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %167

63:                                               ; preds = %50
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %65, align 8
  %67 = icmp ne %struct.TYPE_30__* %66, null
  br i1 %67, label %68, label %167

68:                                               ; preds = %63
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %167, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %167, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %82, align 8
  %84 = call i32 @IsVirtual(%struct.TYPE_30__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %167, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %164, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  store %struct.TYPE_30__* %94, %struct.TYPE_30__** %11, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TF_WithoutRowid, align 4
  %109 = load i32, i32* @TF_NoVisibleRowid, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %121, align 8
  %123 = icmp eq %struct.TYPE_32__* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %127 = call i32 @HasRowid(%struct.TYPE_30__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %91
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %129, %91
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %144, align 8
  store %struct.TYPE_32__* %145, %struct.TYPE_32__** %12, align 8
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %147 = icmp ne %struct.TYPE_32__* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 1
  store %struct.TYPE_32__* %155, %struct.TYPE_32__** %157, align 8
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %159, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 1
  store %struct.TYPE_30__* %160, %struct.TYPE_30__** %162, align 8
  br label %163

163:                                              ; preds = %148, %142
  br label %164

164:                                              ; preds = %163, %86
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  br label %180

167:                                              ; preds = %80, %73, %68, %63, %50
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %169 = load i32, i32* @SQLITE_ERROR, align 4
  %170 = load i8*, i8** %10, align 8
  %171 = icmp ne i8* %170, null
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_28__* %168, i32 %169, i8* %173, i8* %174)
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %176, i8* %177)
  %179 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %167, %164
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @sqlite3VdbeFinalize(i64 %190)
  br label %192

192:                                              ; preds = %187, %180
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %195, align 8
  %197 = call i32 @sqlite3DeleteTable(%struct.TYPE_28__* %193, %struct.TYPE_30__* %196)
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %199 = call i32 @sqlite3ParserReset(%struct.TYPE_31__* %198)
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %202 = call i32 @sqlite3StackFree(%struct.TYPE_28__* %200, %struct.TYPE_31__* %201)
  br label %203

203:                                              ; preds = %192, %48
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 255
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @sqlite3ApiExit(%struct.TYPE_28__* %210, i32 %211)
  store i32 %212, i32* %8, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @sqlite3_mutex_leave(i32 %215)
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %203, %28
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_31__* @sqlite3StackAllocZero(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3RunParser(%struct.TYPE_31__*, i8*, i8**) #1

declare dso_local i32 @HasRowid(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_28__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i64) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ParserReset(%struct.TYPE_31__*) #1

declare dso_local i32 @sqlite3StackFree(%struct.TYPE_28__*, %struct.TYPE_31__*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
