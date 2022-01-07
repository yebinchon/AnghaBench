; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_nfs_decode_compound.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_nfs41_xdr.c_nfs_decode_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_7__*)* }

@FALSE = common dso_local global i32 0, align 4
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"reply with %u operations, only sent %u!\0A\00", align 1
@NFS4_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"successful reply with only %u operations, sent %u!\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"reply with %s in operation %u, expected %s!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_decode_compound(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i32 @xdr_u_int32_t(i32* %17, i64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %167

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %29 = call i32 @xdr_bytes(i32* %25, i8** %11, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %167

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = call i32 @xdr_u_int32_t(i32* %37, i64* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %167

44:                                               ; preds = %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i8*, i64, i64, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %167

57:                                               ; preds = %44
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NFS4_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i8*, i64, i64, ...) @eprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %73)
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %167

76:                                               ; preds = %63, %57
  br label %77

77:                                               ; preds = %76
  store i64 0, i64* %7, align 8
  br label %78

78:                                               ; preds = %162, %77
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %165

84:                                               ; preds = %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @xdr_u_int32_t(i32* %92, i64* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %84
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %167

103:                                              ; preds = %84
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %103
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @nfs_opnum_to_string(i64 %120)
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %7, align 8
  %124 = add nsw i64 %123, 1
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @nfs_opnum_to_string(i64 %125)
  %127 = call i32 (i8*, i64, i64, ...) @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %122, i64 %124, i32 %126)
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %3, align 4
  br label %167

129:                                              ; preds = %103
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call %struct.TYPE_5__* @op_table_find(i64 %136)
  store %struct.TYPE_5__* %137, %struct.TYPE_5__** %10, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %139 = icmp eq %struct.TYPE_5__* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %129
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %142, align 8
  %144 = icmp eq i32 (i32*, %struct.TYPE_7__*)* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %140, %129
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %3, align 4
  br label %167

147:                                              ; preds = %140
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %149, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %155
  %157 = call i32 %150(i32* %151, %struct.TYPE_7__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %147
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %3, align 4
  br label %167

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %7, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %7, align 8
  br label %78

165:                                              ; preds = %78
  %166 = load i32, i32* @TRUE, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %159, %145, %113, %101, %69, %50, %42, %31, %22
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @xdr_u_int32_t(i32*, i64*) #1

declare dso_local i32 @xdr_bytes(i32*, i8**, i32*, i32) #1

declare dso_local i32 @eprintf(i8*, i64, i64, ...) #1

declare dso_local i32 @nfs_opnum_to_string(i64) #1

declare dso_local %struct.TYPE_5__* @op_table_find(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
