; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_CRYPT_ProvCreateStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_CRYPT_ProvCreateStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32**, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32 }

@StoreTypeProvider = common dso_local global i32 0, align 4
@ProvStoreVtbl = common dso_local global i32 0, align 4
@CERT_STORE_PROV_EXTERNAL_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_PROV_CLOSE_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_WRITE_CERT_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_DELETE_CERT_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_WRITE_CRL_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_DELETE_CRL_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_WRITE_CTL_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_DELETE_CTL_FUNC = common dso_local global i64 0, align 8
@CERT_STORE_PROV_CONTROL_FUNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CRYPT_ProvCreateStore(i32 %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %8 = call %struct.TYPE_5__* @CryptMemAlloc(i32 96)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %187

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 11
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @StoreTypeProvider, align 4
  %16 = call i32 @CRYPT_InitStore(i32* %13, i32 %14, i32 %15, i32* @ProvStoreVtbl)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CERT_STORE_PROV_EXTERNAL_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @CertCloseStore(i32* %29, i32 0)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 10
  store i32* null, i32** %32, align 8
  br label %37

33:                                               ; preds = %11
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 10
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CERT_STORE_PROV_CLOSE_FUNC, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* @CERT_STORE_PROV_CLOSE_FUNC, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 8
  store i32* %54, i32** %56, align 8
  br label %60

57:                                               ; preds = %37
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %57, %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CERT_STORE_PROV_WRITE_CERT_FUNC, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* @CERT_STORE_PROV_WRITE_CERT_FUNC, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  store i32* %72, i32** %74, align 8
  br label %78

75:                                               ; preds = %60
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 7
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CERT_STORE_PROV_DELETE_CERT_FUNC, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* @CERT_STORE_PROV_DELETE_CERT_FUNC, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  br label %96

93:                                               ; preds = %78
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %84
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CERT_STORE_PROV_WRITE_CRL_FUNC, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* @CERT_STORE_PROV_WRITE_CRL_FUNC, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  store i32* %108, i32** %110, align 8
  br label %114

111:                                              ; preds = %96
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %111, %102
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CERT_STORE_PROV_DELETE_CRL_FUNC, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* @CERT_STORE_PROV_DELETE_CRL_FUNC, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  store i32* %126, i32** %128, align 8
  br label %132

129:                                              ; preds = %114
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %129, %120
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CERT_STORE_PROV_WRITE_CTL_FUNC, align 8
  %137 = icmp ugt i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32**, i32*** %140, align 8
  %142 = load i64, i64* @CERT_STORE_PROV_WRITE_CTL_FUNC, align 8
  %143 = getelementptr inbounds i32*, i32** %141, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  store i32* %144, i32** %146, align 8
  br label %150

147:                                              ; preds = %132
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %147, %138
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CERT_STORE_PROV_DELETE_CTL_FUNC, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32**, i32*** %158, align 8
  %160 = load i64, i64* @CERT_STORE_PROV_DELETE_CTL_FUNC, align 8
  %161 = getelementptr inbounds i32*, i32** %159, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i32* %162, i32** %164, align 8
  br label %168

165:                                              ; preds = %150
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %165, %156
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CERT_STORE_PROV_CONTROL_FUNC, align 8
  %173 = icmp ugt i64 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32**, i32*** %176, align 8
  %178 = load i64, i64* @CERT_STORE_PROV_CONTROL_FUNC, align 8
  %179 = getelementptr inbounds i32*, i32** %177, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  store i32* %180, i32** %182, align 8
  br label %186

183:                                              ; preds = %168
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32* null, i32** %185, align 8
  br label %186

186:                                              ; preds = %183, %174
  br label %187

187:                                              ; preds = %186, %3
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %189 = bitcast %struct.TYPE_5__* %188 to i32*
  ret i32* %189
}

declare dso_local %struct.TYPE_5__* @CryptMemAlloc(i32) #1

declare dso_local i32 @CRYPT_InitStore(i32*, i32, i32, i32*) #1

declare dso_local i32 @CertCloseStore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
