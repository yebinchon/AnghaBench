; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_pgp_encrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_pgp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64 }

@PXE_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@encrypt_filter = common dso_local global i32 0, align 4
@mdc_filter = common dso_local global i32 0, align 4
@crlf_filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_encrypt(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @PXE_ARGUMENT_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %167

24:                                               ; preds = %17, %3
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @pushf_create_mbuf_writer(i32** %11, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %163

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = call i32 @init_s2k_key(%struct.TYPE_12__* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %163

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = call i32 @init_sess_key(%struct.TYPE_12__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %163

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @pgp_write_pubenc_sesskey(%struct.TYPE_12__* %54, i32* %55)
  store i32 %56, i32* %8, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @write_symenc_sesskey(%struct.TYPE_12__* %58, i32* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %163

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @init_encdata_packet(i32** %12, %struct.TYPE_12__* %66, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %163

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  store i32* %73, i32** %11, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @pushf_create(i32** %12, i32* @encrypt_filter, %struct.TYPE_12__* %74, i32* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %163

80:                                               ; preds = %72
  %81 = load i32*, i32** %12, align 8
  store i32* %81, i32** %11, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @pushf_create(i32** %12, i32* @mdc_filter, %struct.TYPE_12__* %87, i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %163

93:                                               ; preds = %86
  %94 = load i32*, i32** %12, align 8
  store i32* %94, i32** %11, align 8
  br label %95

95:                                               ; preds = %93, %80
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @write_prefix(%struct.TYPE_12__* %96, i32* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %163

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %102
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @init_compress(i32** %12, %struct.TYPE_12__* %113, i32* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %163

119:                                              ; preds = %112
  %120 = load i32*, i32** %12, align 8
  store i32* %120, i32** %11, align 8
  br label %121

121:                                              ; preds = %119, %107, %102
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @init_litdata_packet(i32** %12, %struct.TYPE_12__* %122, i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %163

128:                                              ; preds = %121
  %129 = load i32*, i32** %12, align 8
  store i32* %129, i32** %11, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @pushf_create(i32** %12, i32* @crlf_filter, %struct.TYPE_12__* %140, i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %163

146:                                              ; preds = %139
  %147 = load i32*, i32** %12, align 8
  store i32* %147, i32** %11, align 8
  br label %148

148:                                              ; preds = %146, %134, %128
  %149 = load i32*, i32** %6, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @mbuf_avail(i32* %150)
  %152 = call i32 @mbuf_grab(i32* %149, i32 %151, i32** %10)
  store i32 %152, i32* %9, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @pushf_write(i32* %153, i32* %154, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %148
  %160 = load i32*, i32** %11, align 8
  %161 = call i32 @pushf_flush(i32* %160)
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %148
  br label %163

163:                                              ; preds = %162, %145, %127, %118, %101, %92, %79, %71, %64, %47, %40, %29
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @pushf_free_all(i32* %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %22
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @pushf_create_mbuf_writer(i32**, i32*) #1

declare dso_local i32 @init_s2k_key(%struct.TYPE_12__*) #1

declare dso_local i32 @init_sess_key(%struct.TYPE_12__*) #1

declare dso_local i32 @pgp_write_pubenc_sesskey(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @write_symenc_sesskey(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @init_encdata_packet(i32**, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @pushf_create(i32**, i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @write_prefix(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @init_compress(i32**, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @init_litdata_packet(i32**, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @mbuf_grab(i32*, i32, i32**) #1

declare dso_local i32 @mbuf_avail(i32*) #1

declare dso_local i32 @pushf_write(i32*, i32*, i32) #1

declare dso_local i32 @pushf_flush(i32*) #1

declare dso_local i32 @pushf_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
