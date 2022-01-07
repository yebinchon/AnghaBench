; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubkey.c__pgp_read_public_key.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubkey.c__pgp_read_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@PXE_PGP_NOT_V4_KEYPKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown public algo: %d\00", align 1
@PXE_PGP_UNKNOWN_PUBALGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pgp_read_public_key(i32* %0, %struct.TYPE_14__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %5, align 8
  %8 = call i32 @pgp_key_alloc(%struct.TYPE_14__** %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %170

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GETBYTE(i32* %14, i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @PXE_PGP_NOT_V4_KEYPKT, align 4
  store i32 %24, i32* %6, align 4
  br label %159

25:                                               ; preds = %13
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pullf_read_fixed(i32* %26, i32 4, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %159

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GETBYTE(i32* %35, i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %152 [
    i32 132, label %43
    i32 128, label %86
    i32 130, label %86
    i32 129, label %86
    i32 131, label %117
  ]

43:                                               ; preds = %34
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = call i32 @pgp_mpi_read(i32* %44, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %158

53:                                               ; preds = %43
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = call i32 @pgp_mpi_read(i32* %54, i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %158

63:                                               ; preds = %53
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = call i32 @pgp_mpi_read(i32* %64, i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %158

73:                                               ; preds = %63
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @pgp_mpi_read(i32* %74, i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %158

83:                                               ; preds = %73
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = call i32 @calc_key_id(%struct.TYPE_14__* %84)
  store i32 %85, i32* %6, align 4
  br label %158

86:                                               ; preds = %34, %34, %34
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = call i32 @pgp_mpi_read(i32* %87, i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %158

96:                                               ; preds = %86
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = call i32 @pgp_mpi_read(i32* %97, i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %158

106:                                              ; preds = %96
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %108 = call i32 @calc_key_id(%struct.TYPE_14__* %107)
  store i32 %108, i32* %6, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 128
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %106
  br label %158

117:                                              ; preds = %34
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = call i32 @pgp_mpi_read(i32* %118, i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %158

127:                                              ; preds = %117
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = call i32 @pgp_mpi_read(i32* %128, i32* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %158

137:                                              ; preds = %127
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = call i32 @pgp_mpi_read(i32* %138, i32* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %158

147:                                              ; preds = %137
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = call i32 @calc_key_id(%struct.TYPE_14__* %148)
  store i32 %149, i32* %6, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  store i32 1, i32* %151, align 4
  br label %158

152:                                              ; preds = %34
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @px_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @PXE_PGP_UNKNOWN_PUBALGO, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %152, %147, %146, %136, %126, %116, %105, %95, %83, %82, %72, %62, %52
  br label %159

159:                                              ; preds = %158, %33, %23
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %164 = call i32 @pgp_key_free(%struct.TYPE_14__* %163)
  br label %168

165:                                              ; preds = %159
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %167 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %167, align 8
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %11
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @pgp_key_alloc(%struct.TYPE_14__**) #1

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @pullf_read_fixed(i32*, i32, i32) #1

declare dso_local i32 @pgp_mpi_read(i32*, i32*) #1

declare dso_local i32 @calc_key_id(%struct.TYPE_14__*) #1

declare dso_local i32 @px_debug(i8*, i32) #1

declare dso_local i32 @pgp_key_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
