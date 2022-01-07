; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_dtor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_9__*, i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_10__, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@OCI_FETCH_NEXT = common dso_local global i32 0, align 4
@OCI_DEFAULT = common dso_local global i32 0, align 4
@OCI_HTYPE_STMT = common dso_local global i32 0, align 4
@OCI_HTYPE_ERROR = common dso_local global i32 0, align 4
@OCI_DTYPE_LOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @oci_stmt_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_stmt_dtor(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @OCI_FETCH_NEXT, align 4
  %29 = load i32, i32* @OCI_DEFAULT, align 4
  %30 = call i32 @OCIStmtFetch(i32* %24, i32* %27, i32 0, i32 %28, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %35 = call i32 @OCIHandleFree(i32* %33, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %21, %1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @OCI_HTYPE_ERROR, align 4
  %48 = call i32 @OCIHandleFree(i32* %46, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %43, %38
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zend_hash_destroy(i32* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @FREE_HASHTABLE(i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %54, %51
  %64 = load i32*, i32** %5, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @zend_hash_destroy(i32* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @FREE_HASHTABLE(i32* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %66, %63
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pefree(i32* %85, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %81, %75
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = icmp ne %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %184

100:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %174, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %177

107:                                              ; preds = %101
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = icmp ne %struct.TYPE_13__* %115, null
  br i1 %116, label %117, label %173

117:                                              ; preds = %107
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %162 [
    i32 129, label %126
    i32 128, label %126
  ]

126:                                              ; preds = %117, %117
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = bitcast %struct.TYPE_13__* %149 to i32*
  %151 = call i32 @OCI_TEMPLOB_CLOSE(i32 %131, i32 %136, i32 %141, i32* %150)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = load i32, i32* @OCI_DTYPE_LOB, align 4
  %161 = call i32 @OCIDescriptorFree(%struct.TYPE_13__* %159, i32 %160)
  br label %172

162:                                              ; preds = %117
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = call i32 @efree(%struct.TYPE_13__* %170)
  br label %172

172:                                              ; preds = %162, %126
  br label %173

173:                                              ; preds = %172, %107
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %101

177:                                              ; preds = %101
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = call i32 @efree(%struct.TYPE_13__* %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %183, align 8
  br label %184

184:                                              ; preds = %177, %95
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = call i32 @efree(%struct.TYPE_13__* %185)
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  store i32* null, i32** %188, align 8
  ret i32 1
}

declare dso_local i32 @OCIStmtFetch(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @OCIHandleFree(i32*, i32) #1

declare dso_local i32 @zend_hash_destroy(i32*) #1

declare dso_local i32 @FREE_HASHTABLE(i32*) #1

declare dso_local i32 @pefree(i32*, i32) #1

declare dso_local i32 @OCI_TEMPLOB_CLOSE(i32, i32, i32, i32*) #1

declare dso_local i32 @OCIDescriptorFree(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @efree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
