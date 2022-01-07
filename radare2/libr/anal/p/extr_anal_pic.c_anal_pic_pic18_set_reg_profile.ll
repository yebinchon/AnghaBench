; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_pic18_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_pic18_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2059 x i8] c"#pc lives in nowhere actually=PC\09pc\0A=SP\09tos\0Agpr\09pc\09.32\090\090\0Agpr\09pcl\09.8\090\090\0Agpr\09pclath\09.8\091\090\0Agpr\09pclatu\09.8\092\090\0A#bsr max is 0b111\0Agpr\09bsr\09.8\094\090\0A#tos doesn't exist\0A#general rule of thumb any register of size >8 bits has no existence\0Agpr\09tos\09.32\095\090\0Agpr\09tosl\09.8\095\090\0Agpr\09tosh\09.8\096\090\0Agpr\09tosu\09.8\097\090\0Agpr\09indf0\09.16\099\090\0Agpr\09fsr0\09.12\099\090\0Agpr\09fsr0l\09.8\099\090\0Agpr\09fsr0h\09.8\0910\090\0Agpr\09indf1\09.16\0911\090\0Agpr\09fsr1\09.12\0911\090\0Agpr\09fsr1l\09.8\0911\090\0Agpr\09fsr1h\09.8\0912\090\0Agpr\09indf2\09.16\0913\090\0Agpr\09fsr2\09.12\0913\090\0Agpr\09frs2l\09.8\0913\090\0Agpr\09fsr2h\09.8\0914\090\0Agpr\09tblptr\09.22\0915\090\0Agpr\09tblptrl\09.8\0915\090\0Agpr\09tblptrh\09.8\0916\090\0Agpr\09tblptru\09.8\0917\090\0Agpr\09rcon\09.8\0918\090\0Agpr\09memcon\09.8\0919\090\0Agpr\09intcon\09.8\0920\090\0Agpr\09intcon2\09.8\0921\090\0Agpr\09intcon3\09.8\0922\090\0Agpr\09pie1\09.8\0923\090\0Agpr\09porta\09.7\0929\090\0Agpr\09trisa\09.8\0930\090\0Agpr\09portb\09.8\0933\090\0Agpr\09tisb\09.8\0934\090\0Agpr\09latb\09.8\0935\090\0Agpr\09portc\09.8\0936\090\0Agpr\09trisc\09.8\0937\090\0Agpr\09latc\09.8\0938\090\0Agpr\09portd\09.8\0939\090\0Agpr\09trisd\09.8\0940\090\0Agpr\09latd\09.8\0941\090\0Agpr\09pspcon\09.8\0942\090\0Agpr\09porte\09.8\0943\090\0Agpr\09trise\09.8\0944\090\0Agpr\09late\09.8\0945\090\0Agpr\09t0con\09.8\0946\090\0Agpr\09t1con\09.8\0947\090\0Agpr\09t2con\09.8\0948\090\0Agpr\09tmr1h\09.8\0950\090\0Agpr\09tmr0h\09.8\0951\090\0Agpr\09tmr1l\09.8\0952\090\0Agpr\09tmr2\09.8\0953\090\0Agpr\09pr2\09.8\0954\090\0Agpr\09ccpr1h\09.8\0955\090\0Agpr\09postinc2 .8\0956\090\0Agpr\09ccpr1l\09.8\0957\090\0Agpr\09postdec2 .8\0958\090\0Agpr\09ccp1con\09.8\0959\090\0Agpr\09preinc2\09.8\0960\090\0Agpr\09ccpr2h\09.8\0961\090\0Agpr\09plusw2\09.8\0962\090\0Agpr\09ccpr2l\09.8\0963\090\0Agpr\09ccp2con\09.8\0964\090\0Agpr\09status\09.8\0965\090\0Aflg\09c\09.1\09.520\090\0Aflg\09dc\09.1\09.521\090\0Aflg\09z\09.1\09.522\090\0Aflg\09ov\09.1\09.523\090\0Aflg\09n\09.1\09.524\090\0Agpr\09prod\09.16\0966\090\0Agpr\09prodl\09.8\0966\090\0Agpr\09prodh\09.8\0967\090\0Agpr\09osccon\09.8\0968\090\0Agpr\09tmr3h\09.8\0969\090\0Agpr\09lvdcon\09.8\0970\090\0Agpr\09tmr3l\09.8\0971\090\0Agpr\09wdtcon\09.8\0972\090\0Agpr\09t3con\09.8\0973\090\0Agpr\09spbrg\09.8\0974\090\0Agpr\09postinc0 .8\0975\090\0Agpr\09rcreg\09.8\0976\090\0Agpr\09postdec0 .8\0977\090\0Agpr\09txreg\09.8\0978\090\0Agpr\09preinc0\09.8\0979\090\0Agpr\09txsta\09.8\0980\090\0Agpr\09plusw0\09.8\0981\090\0Agpr\09rcsta\09.8\0982\090\0Agpr\09sspbuf\09.8\0983\090\0Agpr\09wreg\09.8\0984\090\0Agpr\09sspadd\09.8\0985\090\0Agpr\09sspstat\09.8\0986\090\0Agpr\09postinc1 .8\0987\090\0Agpr\09sspcon1\09.8\0988\090\0Agpr\09postdec1 .8\0989\090\0Agpr\09sspcon2\09.8\0990\090\0Agpr\09preinc1\09.8\0991\090\0Agpr\09adresh\09.8\0992\090\0Agpr\09plusw1\09.8\0993\090\0Agpr\09adresl\09.8\0994\090\0Agpr\09adcon0\09.8\0995\090\0A#stkprt max is 0b11111\0Agpr\09stkptr\09.8\0996\090\0Agpr\09tablat\09.8\0914\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @anal_pic_pic18_set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anal_pic_pic18_set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([2059 x i8], [2059 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
