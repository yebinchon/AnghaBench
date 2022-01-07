; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_mib.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ar8xxx_priv = type { i8*, i32*, i64, i32, i32, %struct.ar8xxx_chip* }
%struct.ar8xxx_chip = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MIB counters\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%-12s: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TxByte\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"RxGoodByte\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"No MIB data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_get_port_mib(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar8xxx_priv*, align 8
  %9 = alloca %struct.ar8xxx_chip*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %20 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %21 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %20)
  store %struct.ar8xxx_priv* %21, %struct.ar8xxx_priv** %8, align 8
  %22 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %22, i32 0, i32 5
  %24 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %23, align 8
  store %struct.ar8xxx_chip* %24, %struct.ar8xxx_chip** %9, align 8
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %26 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %29 = call i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %3
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %190

39:                                               ; preds = %31
  %40 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %41 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %45 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp uge i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %190

51:                                               ; preds = %39
  %52 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %53 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %52, i32 0, i32 3
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %56 = call i32 @ar8xxx_mib_capture(%struct.ar8xxx_priv* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %185

60:                                               ; preds = %51
  %61 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv* %61, i32 %62, i32 0)
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %67, i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %18, align 4
  %75 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %76 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %80 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul i32 %78, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  store i32* %84, i32** %10, align 8
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %168, %60
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %88 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %171

91:                                               ; preds = %85
  %92 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %93 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %101 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %168

105:                                              ; preds = %91
  %106 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %107 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %16, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %11, align 4
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 8, %124
  %126 = trunc i64 %125 to i32
  %127 = load i8*, i8** %16, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %122, i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %127, i32 %128)
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %18, align 4
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %105
  %136 = load i8*, i8** %16, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %135, %105
  %140 = load i32, i32* %11, align 4
  %141 = icmp sge i32 %140, 1024
  br i1 %141, label %142, label %160

142:                                              ; preds = %139
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @ar8xxx_byte_to_str(i8* %143, i32 64, i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %18, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 8, %153
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %157 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %151, i32 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %156)
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %142, %139, %135
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  br label %167

167:                                              ; preds = %166, %163, %160
  br label %168

168:                                              ; preds = %167, %104
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %17, align 4
  br label %85

171:                                              ; preds = %85
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i8*, i8** %14, align 8
  %176 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %175, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i8*, i8** %14, align 8
  %179 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %180 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  %182 = load i32, i32* %18, align 4
  %183 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %184 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  store i32 0, i32* %13, align 4
  br label %185

185:                                              ; preds = %177, %59
  %186 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %187 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %186, i32 0, i32 3
  %188 = call i32 @mutex_unlock(i32* %187)
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %185, %48, %36
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar8xxx_mib_capture(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ar8xxx_byte_to_str(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
