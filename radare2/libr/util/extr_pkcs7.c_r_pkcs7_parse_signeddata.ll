; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_pkcs7.c_r_pkcs7_parse_signeddata.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_pkcs7.c_r_pkcs7_parse_signeddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__, i64* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__** }

@CLASS_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @r_pkcs7_parse_signeddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_pkcs7_parse_signeddata(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i64 3, i64* %6, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %10, %2
  store i32 0, i32* %3, align 4
  br label %158

20:                                               ; preds = %13
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call i32 @memset(%struct.TYPE_13__* %21, i32 0, i32 32)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %25, align 8
  store %struct.TYPE_14__** %26, %struct.TYPE_14__*** %7, align 8
  %27 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %27, i64 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %38, i64 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = call i32 @r_pkcs7_parse_digestalgorithmidentifier(i32* %37, %struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %44, i64 2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = call i32 @r_pkcs7_parse_contentinfo(i32* %43, %struct.TYPE_14__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %94

53:                                               ; preds = %20
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %53
  %62 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %62, i64 %63
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %67, label %94

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %68, i64 %69
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CLASS_CONTEXT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %67
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %77, i64 %78
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %87, i64 %88
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = call i32 @r_pkcs7_parse_extendedcertificatesandcertificates(i32* %86, %struct.TYPE_14__* %90)
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %84, %76, %67, %61, %53, %20
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 3
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %101, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %100
  %109 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %109, i64 %110
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %141

114:                                              ; preds = %108
  %115 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %115, i64 %116
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CLASS_CONTEXT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %114
  %124 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %124, i64 %125
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %141

131:                                              ; preds = %123
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %135 = load i64, i64* %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %134, i64 %135
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = call i32 @r_pkcs7_parse_certificaterevocationlists(i32* %133, %struct.TYPE_14__* %137)
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %6, align 8
  br label %141

141:                                              ; preds = %131, %123, %114, %108, %100, %94
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = icmp ult i64 %142, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %152, i64 %153
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = call i32 @r_pkcs7_parse_signerinfos(i32* %151, %struct.TYPE_14__* %155)
  br label %157

157:                                              ; preds = %149, %141
  store i32 1, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %19
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @r_pkcs7_parse_digestalgorithmidentifier(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @r_pkcs7_parse_contentinfo(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @r_pkcs7_parse_extendedcertificatesandcertificates(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @r_pkcs7_parse_certificaterevocationlists(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @r_pkcs7_parse_signerinfos(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
