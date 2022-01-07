; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c__mdfd_getseg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c__mdfd_getseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_14__** }

@EXTENSION_FAIL = common dso_local global i32 0, align 4
@EXTENSION_CREATE = common dso_local global i32 0, align 4
@EXTENSION_RETURN_NULL = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"segment too big\00", align 1
@InRecovery = common dso_local global i64 0, align 8
@EXTENSION_CREATE_RECOVERY = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@EXTENSION_DONT_CHECK_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"could not open file \22%s\22 (target block %u): previous segment is only %u blocks\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"could not open file \22%s\22 (target block %u): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i64, i64, i32, i32)* @_mdfd_getseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @_mdfd_getseg(%struct.TYPE_13__* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @EXTENSION_FAIL, align 4
  %20 = load i32, i32* @EXTENSION_CREATE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EXTENSION_RETURN_NULL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = call i32 @Assert(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @RELSEG_SIZE, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %5
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %40, i64 %41
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %44
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %12, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %6, align 8
  br label %205

47:                                               ; preds = %5
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %58, i64 %59
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 %68
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %12, align 8
  br label %79

70:                                               ; preds = %47
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call %struct.TYPE_14__* @mdopenfork(%struct.TYPE_13__* %71, i64 %72, i32 %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %12, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = icmp ne %struct.TYPE_14__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %205

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %200, %79
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ule i64 %87, %88
  br i1 %89, label %90, label %203

90:                                               ; preds = %86
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = call i64 @_mdnblocks(%struct.TYPE_13__* %91, i64 %92, %struct.TYPE_14__* %93)
  store i64 %94, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %95, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @RELSEG_SIZE, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %90
  %108 = load i32, i32* @FATAL, align 4
  %109 = call i32 @elog(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %90
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @EXTENSION_CREATE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* @InRecovery, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @EXTENSION_CREATE_RECOVERY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %118, %110
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* @RELSEG_SIZE, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load i32, i32* @BLCKSZ, align 4
  %129 = call i8* @palloc0(i32 %128)
  store i8* %129, i8** %17, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @RELSEG_SIZE, align 8
  %134 = mul i64 %132, %133
  %135 = sub i64 %134, 1
  %136 = load i8*, i8** %17, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @mdextend(%struct.TYPE_13__* %130, i64 %131, i64 %135, i8* %136, i32 %137)
  %139 = load i8*, i8** %17, align 8
  %140 = call i32 @pfree(i8* %139)
  br label %141

141:                                              ; preds = %127, %123
  %142 = load i32, i32* @O_CREAT, align 4
  store i32 %142, i32* %16, align 4
  br label %171

143:                                              ; preds = %118, %115
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @EXTENSION_DONT_CHECK_SIZE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* @RELSEG_SIZE, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @EXTENSION_RETURN_NULL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @ENOENT, align 4
  store i32 %158, i32* @errno, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %205

159:                                              ; preds = %152
  %160 = load i32, i32* @ERROR, align 4
  %161 = call i32 (...) @errcode_for_file_access()
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @_mdfd_segpath(%struct.TYPE_13__* %162, i64 %163, i64 %164)
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %15, align 8
  %168 = call i32 (i8*, i32, i64, ...) @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %165, i64 %166, i64 %167)
  %169 = call i32 @ereport(i32 %160, i32 %168)
  br label %170

170:                                              ; preds = %159, %148, %143
  br label %171

171:                                              ; preds = %170, %141
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %173 = load i64, i64* %8, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call %struct.TYPE_14__* @_mdfd_openseg(%struct.TYPE_13__* %172, i64 %173, i64 %174, i32 %175)
  store %struct.TYPE_14__* %176, %struct.TYPE_14__** %12, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %178 = icmp eq %struct.TYPE_14__* %177, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %171
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @EXTENSION_RETURN_NULL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i32, i32* @errno, align 4
  %186 = call i64 @FILE_POSSIBLY_DELETED(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %205

189:                                              ; preds = %184, %179
  %190 = load i32, i32* @ERROR, align 4
  %191 = call i32 (...) @errcode_for_file_access()
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @_mdfd_segpath(%struct.TYPE_13__* %192, i64 %193, i64 %194)
  %196 = load i64, i64* %9, align 8
  %197 = call i32 (i8*, i32, i64, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %195, i64 %196)
  %198 = call i32 @ereport(i32 %190, i32 %197)
  br label %199

199:                                              ; preds = %189, %171
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %14, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %14, align 8
  br label %86

203:                                              ; preds = %86
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %204, %struct.TYPE_14__** %6, align 8
  br label %205

205:                                              ; preds = %203, %188, %157, %77, %37
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %206
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_14__* @mdopenfork(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i64 @_mdnblocks(%struct.TYPE_13__*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @mdextend(%struct.TYPE_13__*, i64, i64, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32, i64, ...) #1

declare dso_local i32 @_mdfd_segpath(%struct.TYPE_13__*, i64, i64) #1

declare dso_local %struct.TYPE_14__* @_mdfd_openseg(%struct.TYPE_13__*, i64, i64, i32) #1

declare dso_local i64 @FILE_POSSIBLY_DELETED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
