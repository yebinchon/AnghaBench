; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_pkcs7.c_r_pkcs7_parse_signerinfo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_pkcs7.c_r_pkcs7_parse_signerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__, i32, i64* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__** }

@CLASS_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @r_pkcs7_parse_signerinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_pkcs7_parse_signerinfo(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i64 3, i64* %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %12, %2
  store i32 0, i32* %3, align 4
  br label %167

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  store %struct.TYPE_11__** %26, %struct.TYPE_11__*** %6, align 8
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %38, i64 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = call i32 @r_pkcs7_parse_issuerandserialnumber(i32* %37, %struct.TYPE_11__* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %44, i64 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i32 @r_x509_parse_algorithmidentifier(i32* %43, %struct.TYPE_11__* %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %22
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 %57
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CLASS_CONTEXT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i64 %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %75, i64 %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = call i32 @r_pkcs7_parse_attributes(i32* %74, %struct.TYPE_11__* %78)
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %72, %64, %55, %22
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %83, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %93, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = call i32 @r_x509_parse_algorithmidentifier(i32* %92, %struct.TYPE_11__* %96)
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %90, %82
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %101, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %100
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %112, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %8, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = icmp ne %struct.TYPE_11__* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %108
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @r_asn1_create_binary(i64* %121, i32 %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %118, %108
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = icmp ult i64 %132, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %140, i64 %141
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %9, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = icmp ne %struct.TYPE_11__* %144, null
  br i1 %145, label %146, label %165

146:                                              ; preds = %139
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CLASS_CONTEXT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %146
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 1
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %160, i64 %161
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = call i32 @r_pkcs7_parse_attributes(i32* %159, %struct.TYPE_11__* %163)
  br label %165

165:                                              ; preds = %157, %152, %146, %139
  br label %166

166:                                              ; preds = %165, %131
  store i32 1, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %21
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @r_pkcs7_parse_issuerandserialnumber(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @r_x509_parse_algorithmidentifier(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @r_pkcs7_parse_attributes(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @r_asn1_create_binary(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
