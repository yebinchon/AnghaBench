; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2193 x i8] c"=PC\09pc\0A=SP\09o6\0A=BP\09i6\0Agpr\09g0\09.64\090\090\0Agpr\09g1\09.64\098\090\0Agpr\09g2\09.64\0916\090\0Agpr\09g3\09.64\0924\090\0Agpr\09g4\09.64\0932\090\0Agpr\09g5\09.64\0940\090\0Agpr\09g6\09.64\0948\090\0Agpr\09g7\09.64\0956\090\0Agpr\09o0\09.64\0964\090\0Agpr\09o1\09.64\0972\090\0Agpr\09o2\09.64\0980\090\0Agpr\09o3\09.64\0988\090\0Agpr\09o4\09.64\0996\090\0Agpr\09o5\09.64\09104\090\0Agpr\09o6\09.64\09112\090\0Agpr\09o7\09.64\09120\090\0Agpr\09l0\09.64\09128\090\0Agpr\09l1\09.64\09136\090\0Agpr\09l2\09.64\09144\090\0Agpr\09l3\09.64\09152\090\0Agpr\09l4\09.64\09160\090\0Agpr\09l5\09.64\09168\090\0Agpr\09l6\09.64\09176\090\0Agpr\09l7\09.64\09184\090\0Agpr\09i0\09.64\09192\090\0Agpr\09i1\09.64\09200\090\0Agpr\09i2\09.64\09208\090\0Agpr\09i3\09.64\09216\090\0Agpr\09i4\09.64\09224\090\0Agpr\09i5\09.64\09232\090\0Agpr\09i6\09.64\09240\090\0Agpr\09i7\09.64\09248\090\0Agpr\09ccr\09.64\09256\090\0Agpr\09pc\09.64\09264\090\0Agpr\09ncp\09.64\09272\090\0Agpr\09y\09.64\09280\090\0Agpr\09asi\09.64\09288\090\0Agpr\09fprs\09.64\09296\090\0Afpu\09sf0\09.32\09304\090\0Afpu\09sf1\09.32\09308\090\0Afpu\09sf2\09.32\09312\090\0Afpu\09sf3\09.32\09316\090\0Afpu\09sf4\09.32\09320\090\0Afpu\09sf5\09.32\09324\090\0Afpu\09sf6\09.32\09328\090\0Afpu\09sf7\09.32\09332\090\0Afpu\09sf8\09.32\09336\090\0Afpu\09sf9\09.32\09340\090\0Afpu\09sf10\09.32\09344\090\0Afpu\09sf11\09.32\09348\090\0Afpu\09sf12\09.32\09352\090\0Afpu\09sf13\09.32\09356\090\0Afpu\09sf14\09.32\09360\090\0Afpu\09sf15\09.32\09364\090\0Afpu\09sf16\09.32\09368\090\0Afpu\09sf17\09.32\09372\090\0Afpu\09sf18\09.32\09376\090\0Afpu\09sf19\09.32\09380\090\0Afpu\09sf20\09.32\09384\090\0Afpu\09sf21\09.32\09388\090\0Afpu\09sf22\09.32\09392\090\0Afpu\09sf23\09.32\09396\090\0Afpu\09sf24\09.32\09400\090\0Afpu\09sf25\09.32\09404\090\0Afpu\09sf26\09.32\09408\090\0Afpu\09sf27\09.32\09412\090\0Afpu\09sf28\09.32\09416\090\0Afpu\09sf29\09.32\09420\090\0Afpu\09sf30\09.32\09424\090\0Afpu\09sf31\09.32\09428\090\0Afpu\09df0\09.64\09304\090\0Afpu\09df2\09.64\09312\090\0Afpu\09df4\09.64\09320\090\0Afpu\09df6\09.64\09328\090\0Afpu\09df8\09.64\09336\090\0Afpu\09df10\09.64\09344\090\0Afpu\09df12\09.64\09352\090\0Afpu\09df14\09.64\09360\090\0Afpu\09df16\09.64\09368\090\0Afpu\09df18\09.64\09376\090\0Afpu\09df20\09.64\09384\090\0Afpu\09df22\09.64\09392\090\0Afpu\09df24\09.64\09400\090\0Afpu\09df26\09.64\09408\090\0Afpu\09df28\09.64\09416\090\0Afpu\09df30\09.64\09424\090\0Afpu\09df32\09.64\09432\090\0Afpu\09df34\09.64\09440\090\0Afpu\09df36\09.64\09448\090\0Afpu\09df38\09.64\09456\090\0Afpu\09df40\09.64\09464\090\0Afpu\09df42\09.64\09472\090\0Afpu\09df44\09.64\09480\090\0Afpu\09df46\09.64\09488\090\0Afpu\09df48\09.64\09496\090\0Afpu\09df50\09.64\09504\090\0Afpu\09df52\09.64\09512\090\0Afpu\09df54\09.64\09520\090\0Afpu\09df56\09.64\09528\090\0Afpu\09df58\09.64\09536\090\0Afpu\09df60\09.64\09544\090\0Afpu\09df62\09.64\09552\090\0Afpu\09qf0\09.128\09304\090\0Afpu\09qf4\09.128\09320\090\0Afpu\09qf8\09.128\09336\090\0Afpu\09qf12\09.128\09352\090\0Afpu\09qf16\09.128\09368\090\0Afpu\09qf20\09.128\09384\090\0Afpu\09qf24\09.128\09400\090\0Afpu\09qf28\09.128\09416\090\0Afpu\09qf32\09.128\09432\090\0Afpu\09qf36\09.128\09448\090\0Afpu\09qf40\09.128\09464\090\0Afpu\09qf44\09.128\09480\090\0Afpu\09qf48\09.128\09496\090\0Afpu\09qf52\09.128\09512\090\0Afpu\09qf56\09.128\09528\090\0Afpu\09qf60\09.128\09544\090\0Agpr\09fsr\09.64\09560\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([2193 x i8], [2193 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @r_reg_set_profile_string(i32 %6, i8* %7)
  ret i32 %8
}

declare dso_local i32 @r_reg_set_profile_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
